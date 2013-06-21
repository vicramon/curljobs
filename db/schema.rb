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

ActiveRecord::Schema.define(version: 20130621002949) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: true do |t|
    t.string  "company_name"
    t.string  "contact_name"
    t.string  "email"
    t.boolean "front_end",        default: false
    t.boolean "back_end",         default: false
    t.boolean "designers",        default: false
    t.boolean "sys_admins",       default: false
    t.boolean "project_managers", default: false
    t.string  "city"
    t.string  "address"
    t.string  "state"
    t.string  "phone"
  end

end
