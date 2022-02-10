# frozen_string_literal: true

module V1
  class ProductsController < ApplicationController
    before_action :set_product, only: %i[show update destroy]

    def index
      render json: Product.all
    end

    def show
      render json: @product, include: '**'
    end

    def create
      @product = Product.new(product_params)
      @product.save!
      render json: @product, status: :created
    end

    def update
      @product.update(product_params)
      render json: @product
    end

    def destroy
      @product.destroy
    end

    private

    def set_product
      @product = Product.find(params[:id])
    end

    def product_params
      params.permit(
        :name, :description, :url, :num_conditioned, :num_technical_note, :prime_min, :prime_max,
        :validity, :insurable_object_id
      )
    end

    def unprocessable_entity
      render json: @product.errors, status: __method__
    end
  end
end
