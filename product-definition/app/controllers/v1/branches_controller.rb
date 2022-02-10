# frozen_string_literal: true

module V1
  class BranchesController < ApplicationController
    before_action :set_branch, only: %i[show]

    def index
      render json: Branch.all
    end

    def show
      render json: @branch
    end

    def create
      @branch = Branch.new(branch_params)
      @branch.save!
      render json: @branch, status: :created
    end

    private

    def set_branch
      @branch = Branch.find(params[:id])
    end

    def branch_params
      params.permit(:name)
    end

    def unprocessable_entity
      render json: @branch.errors, status: __method__
    end
  end
end
