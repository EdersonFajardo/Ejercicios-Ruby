# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_211_112_175_534) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'branches', force: :cascade do |t|
    t.string 'name', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'coverages', force: :cascade do |t|
    t.string 'name', null: false
    t.text 'description'
    t.decimal 'rate'
    t.decimal 'min_limit'
    t.decimal 'max_limit'
    t.bigint 'branch_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['branch_id'], name: 'index_coverages_on_branch_id'
  end

  create_table 'insurable_objects', force: :cascade do |t|
    t.string 'name', null: false
    t.text 'description'
    t.bigint 'coverage_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['coverage_id'], name: 'index_insurable_objects_on_coverage_id'
  end

  create_table 'products', force: :cascade do |t|
    t.string 'name', null: false
    t.text 'description'
    t.text 'url'
    t.integer 'num_conditioned'
    t.integer 'num_technical_note'
    t.decimal 'prime_min'
    t.decimal 'prime_max'
    t.integer 'validity'
    t.bigint 'insurable_object_id'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['insurable_object_id'], name: 'index_products_on_insurable_object_id'
  end

  add_foreign_key 'coverages', 'branches'
  add_foreign_key 'insurable_objects', 'coverages'
  add_foreign_key 'products', 'insurable_objects'
end
