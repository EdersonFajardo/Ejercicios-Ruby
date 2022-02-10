# frozen_string_literal: true

class CreateInsurableObjects < ActiveRecord::Migration[6.1]
  def change
    create_table :insurable_objects do |t|
      t.string :name, null: false
      t.text :description

      t.references :coverage, index: true, foreign_key: true

      t.timestamps
    end
  end
end
