# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_10_30_224427) do

<<<<<<< HEAD
  create_table "animals", force: :cascade do |t|
    t.string "animalType"
=======
  create_table "cats", force: :cascade do |t|
>>>>>>> b3f2ed13bb579a47fd45b39626c2e6f3bee40e9e
    t.string "catName"
    t.string "catType"
  end

  create_table "dogs", force: :cascade do |t|
    t.string "dogName"
    t.string "dogType"
    t.string "dogSize"
  end

end
