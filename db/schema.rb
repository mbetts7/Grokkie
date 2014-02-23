# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140222205434) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: true do |t|
    t.text     "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: true do |t|
    t.text     "body"
    t.integer  "roadmap_id"
    t.integer  "commentable_id"
    t.string   "commentable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "comments", ["roadmap_id"], name: "index_comments_on_roadmap_id", using: :btree

  create_table "resources", force: true do |t|
    t.text     "name"
    t.string   "url"
    t.string   "description"
    t.integer  "position_id"
    t.integer  "roadmap_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resources", ["roadmap_id"], name: "index_resources_on_roadmap_id", using: :btree

  create_table "roadmaps", force: true do |t|
    t.text     "title"
    t.string   "description"
    t.integer  "vote",        default: 0
    t.integer  "skill_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roadmaps", ["skill_id"], name: "index_roadmaps_on_skill_id", using: :btree

  create_table "skills", force: true do |t|
    t.text     "name"
    t.integer  "category_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "skills", ["category_id"], name: "index_skills_on_category_id", using: :btree

end
