# frozen_string_literal: true

module V1
  class InsurableObjectsController < ApplicationController
    before_action :set_insurable_object, only: %i[show update destroy]

    def index
      render json: InsurableObject.all
    end

    def show
      render json: @insurable_object
    end

    def create
      @insurable_object = InsurableObject.new(insurable_object_params)
      @insurable_object.save!
      render json: @insurable_object, status: :created
    end

    def update
      @insurable_object.update(insurable_object_params)
      render json: @insurable_object
    end

    def destroy
      @insurable_object.destroy
    end

    private

    def set_insurable_object
      @insurable_object = InsurableObject.find(params[:id])
    end

    def insurable_object_params
      params.permit(:name, :description, :coverage_id)
    end

    def unprocessable_entity
      render json: @insurable_object.errors, status: __method__
    end
  end
end
