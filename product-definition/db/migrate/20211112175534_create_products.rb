# frozen_string_literal: true

class CreateProducts < ActiveRecord::Migration[6.1]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :description
      t.text :url
      t.integer :num_conditioned
      t.integer :num_technical_note
      t.decimal :prime_min
      t.decimal :prime_max
      t.integer :validity

      t.references :insurable_object, index: true, foreign_key: true

      t.timestamps
    end
  end
end
