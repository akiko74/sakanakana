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

ActiveRecord::Schema.define(:version => 20110725145201) do

  create_table "admins", :force => true do |t|
    t.string   "email",                               :default => "", :null => false
    t.string   "encrypted_password",   :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.integer  "failed_attempts",                     :default => 0
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true
  add_index "admins", ["unlock_token"], :name => "index_admins_on_unlock_token", :unique => true

  create_table "areas", :force => true do |t|
    t.string   "areaname",   :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details", :force => true do |t|
    t.string   "name",        :null => false
    t.string   "englishname"
    t.string   "othername"
    t.text     "description"
    t.integer  "genre_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "details_pictures", :id => false, :force => true do |t|
    t.integer "detail_id"
    t.integer "picture_id"
  end

  create_table "divelogs", :force => true do |t|
    t.integer  "divesite_id", :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "start_date",  :null => false
    t.datetime "end_date",    :null => false
  end

  create_table "divesites", :force => true do |t|
    t.string   "pointname",            :null => false
    t.integer  "area_id",              :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sitemap_file_name"
    t.string   "sitemap_content_type"
    t.integer  "sitemap_file_size"
    t.datetime "sitemap_updated_at"
  end

  create_table "exifs", :force => true do |t|
    t.string   "camera_brand"
    t.string   "camera_model"
    t.datetime "shot_date_time"
    t.integer  "picture_id",     :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "genres", :force => true do |t|
    t.string   "genrename",  :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "infos", :force => true do |t|
    t.string   "content"
    t.string   "url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pickups", :force => true do |t|
    t.integer  "picture"
    t.string   "comment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures", :force => true do |t|
    t.integer  "divesite_id"
    t.integer  "divelog_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pictures_tags", :id => false, :force => true do |t|
    t.integer "picture_id"
    t.integer "tag_id"
  end

  create_table "tags", :force => true do |t|
    t.string   "tagname",    :null => false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "whatsnews", :force => true do |t|
    t.string   "content"
    t.string   "link"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
