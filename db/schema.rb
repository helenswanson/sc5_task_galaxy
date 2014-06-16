ActiveRecord::Schema.define() do

  create_table  "users", force:true do |t|
    t.string    "email",        null: false
    t.string    "first_name"
    t.string    "last_name"
    t.datetime  "created_at"
    t.datetime  "updated_at"
    t.integer   "task_list_id"  null: false

    t.timestamps
  end

  create_table  "tasks", force:true do |t|
    t.string    "name",         null: false
    t.text      "description"
    t.string    "due_date"
    t.datetime  "created_at"
    t.datetime  "updated_at"
    t.integer   "user_id"       null: false
    t.integer   "task_list_id"  null: false
  end

  create_table  "task_lists", force:true do |t|
    t.string    "name",    null: false
    t.text      "description"
    t.datetime  "created_at"
    t.datetime  "updated_at"
    t.integer   "user_id"       null: false

    t.timestamps
  end
