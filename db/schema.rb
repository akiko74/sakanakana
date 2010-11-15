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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20101028155607) do

  create_table "areas", :force => true do |t|
    t.string   "areaname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", :force => true do |t|
    t.string   "name"
    t.string   "ename"
    t.string   "oname"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "genre_id"
  end

  create_table "divesites", :force => true do |t|
    t.string   "pointname"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "area_id"
  end

  create_table "genres", :force => true do |t|
    t.string   "genrename"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "logs", :force => true do |t|
    t.date     "logdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "divesite_id"
  end

  create_table "pictures", :force => true do |t|
    t.string   "pictid"
    t.datetime "pictdate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "divesite_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "tags", :force => true do |t|
    t.string   "tagname"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
