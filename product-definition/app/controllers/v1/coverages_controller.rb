# frozen_string_literal: true

module V1
  class CoveragesController < ApplicationController
    before_action :set_coverage, only: %i[show update destroy]

    def index
      render json: Coverage.all
    end

    def show
      render json: @coverage
    end

    def create
      @coverage = Coverage.new(coverage_params)
      @coverage.save!
      render json: @coverage, status: :created
    end

    def update
      @coverage.update(coverage_params)
      render json: @coverage
    end

    def destroy
      @coverage.destroy
    end

    private

    def set_coverage
      @coverage = Coverage.find(params[:id])
    end

    def coverage_params
      params.permit(:name, :description, :rate, :min_limit, :max_limit, :branch_id)
    end

    def unprocessable_entity
      render json: @coverage.errors, status: __method__
    end
  end
end
