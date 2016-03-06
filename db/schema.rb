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

ActiveRecord::Schema.define(version: 20160305223512) do

  create_table "characters", force: :cascade do |t|
    t.string   "name"
    t.text     "dialogue"
    t.text     "parenthetical"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.integer  "scene_id"
  end

  add_index "characters", ["scene_id"], name: "index_characters_on_scene_id"

  create_table "comments", force: :cascade do |t|
    t.text     "comment"
    t.integer  "project_id"
    t.integer  "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "comments", ["project_id"], name: "index_comments_on_project_id"
  add_index "comments", ["user_id"], name: "index_comments_on_user_id"

  create_table "projects", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.string   "genre"
    t.integer  "user_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "cover_image"
  end

  add_index "projects", ["user_id"], name: "index_projects_on_user_id"

  create_table "projects_tags", id: false, force: :cascade do |t|
    t.integer "project_id", null: false
    t.integer "tag_id",     null: false
  end

  add_index "projects_tags", ["project_id"], name: "index_projects_tags_on_project_id"
  add_index "projects_tags", ["tag_id"], name: "index_projects_tags_on_tag_id"

  create_table "scenes", force: :cascade do |t|
    t.string   "heading"
    t.text     "action"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "project_id"
  end

  add_index "scenes", ["project_id"], name: "index_scenes_on_project_id"

  create_table "tags", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                           null: false
    t.string   "crypted_password"
    t.string   "salt"
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_me_token"
    t.datetime "remember_me_token_expires_at"
    t.string   "reset_password_token"
    t.datetime "reset_password_token_expires_at"
    t.datetime "reset_password_email_sent_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_me_token"], name: "index_users_on_remember_me_token"
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token"

end
