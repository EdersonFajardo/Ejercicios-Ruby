# frozen_string_literal: true

class CreateCoverages < ActiveRecord::Migration[6.1]
  def change
    create_table :coverages do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :rate
      t.decimal :min_limit
      t.decimal :max_limit

      t.references :branch, index: true, foreign_key: true

      t.timestamps
    end
  end
end
