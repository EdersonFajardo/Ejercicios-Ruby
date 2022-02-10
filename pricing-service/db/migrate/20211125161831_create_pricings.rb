# frozen_string_literal: true

class CreatePricings < ActiveRecord::Migration[6.1]
  def change
    create_table :pricings do |t|
      t.decimal :premium
      t.decimal :iva
      t.decimal :total_premium
      t.string :coverage_id
      t.string :insurable_object_id
      t.string :product_id

      t.timestamps
    end
  end
end
