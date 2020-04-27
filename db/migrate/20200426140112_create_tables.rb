class CreateTables < ActiveRecord::Migration[5.0]
  def change
    create_table "books", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "id"
      t.text    "text",   limit: 65535
      t.string  "author"
      t.string  "title"
    end
  
    create_table "comments", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "id"
      t.text    "text",          limit: 65535
      t.integer "counseling_id"
      t.index ["counseling_id"], name: "index_comments_on_counseling_id", using: :btree
    end
  
    create_table "counselings", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "id"
      t.text    "text", limit: 4294967295
      t.string  "type"
    end
  
    create_table "goods", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "id"
      t.integer "good_num"
    end
  
    create_table "movies", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "id"
      t.string  "title"
      t.string  "author"
      t.text    "text",   limit: 65535
    end
  
    create_table "news", id: false, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.integer "id"
      t.string  "title"
      t.text    "text",  limit: 4294967295
      t.text    "image", limit: 65535
    end
  
    create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string   "name",                                null: false
      t.string   "email",                  default: "", null: false
      t.string   "encrypted_password",     default: "", null: false
      t.string   "reset_password_token"
      t.datetime "reset_password_sent_at"
      t.datetime "remember_created_at"
      t.datetime "created_at",                          null: false
      t.datetime "updated_at",                          null: false
      t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
      t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
    end
  
    create_table "yours", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
      t.string   "nickname"
      t.text     "image",      limit: 65535
      t.datetime "created_at",               null: false
      t.datetime "updated_at",               null: false
      t.string   "gender"
      t.date     "birthday"
      t.text     "hobby",      limit: 65535
      t.integer  "age"
      t.string   "job"
      t.string   "marriage"
      t.string   "child"
      t.integer  "user_id"
      t.index ["user_id"], name: "index_stores_on_user_id", using: :btree
    end
  end
end
