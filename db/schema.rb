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

ActiveRecord::Schema[7.0].define(version: 20_230_329_091_520) do
  # These are extensions that must be enabled in order to support this database
  enable_extension 'plpgsql'

  create_table 'categories', force: :cascade do |t|
    t.integer 'restaurant_id'
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['restaurant_id'], name: 'index_categories_on_restaurant_id'
  end

  create_table 'items', force: :cascade do |t|
    t.string 'title'
    t.integer 'price'
    t.text 'description'
    t.integer 'category_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['category_id'], name: 'index_items_on_category_id'
  end

  create_table 'locations', force: :cascade do |t|
    t.string 'city'
    t.string 'state'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end

  create_table 'locations_restaurants', force: :cascade do |t|
    t.bigint 'location_id'
    t.bigint 'restaurant_id'
    t.index ['location_id'], name: 'index_locations_restaurants_on_location_id'
    t.index ['restaurant_id'], name: 'index_locations_restaurants_on_restaurant_id'
  end

  create_table 'restaurants', force: :cascade do |t|
    t.string 'name'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
  end
end
