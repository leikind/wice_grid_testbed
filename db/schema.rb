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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120715181210) do

  create_table "companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "companies", ["name"], :name => "index_companies_on_name"

  create_table "priorities", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "priorities", ["name"], :name => "index_priorities_on_name"
  add_index "priorities", ["position"], :name => "index_priorities_on_position"

  create_table "project_roles", :force => true do |t|
    t.string   "name"
    t.boolean  "can_close_tasks"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "project_roles", ["name"], :name => "index_project_roles_on_name"

  create_table "projects", :force => true do |t|
    t.string   "name"
    t.integer  "customer_id"
    t.integer  "supplier_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "projects", ["customer_id"], :name => "index_projects_on_customer_id"
  add_index "projects", ["supplier_id"], :name => "index_projects_on_supplier_id"

  create_table "statuses", :force => true do |t|
    t.string   "name"
    t.integer  "position"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "statuses", ["name"], :name => "index_statuses_on_name"
  add_index "statuses", ["position"], :name => "index_statuses_on_position"

  create_table "tasks", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.integer  "created_by_id"
    t.integer  "project_id"
    t.date     "due_date"
    t.integer  "priority_id"
    t.integer  "status_id"
    t.integer  "relevant_version_id"
    t.integer  "expected_version_id"
    t.float    "estimated_time"
    t.boolean  "archived"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  add_index "tasks", ["created_by_id"], :name => "index_tasks_on_created_by_id"
  add_index "tasks", ["expected_version_id"], :name => "index_tasks_on_expected_version_id"
  add_index "tasks", ["priority_id"], :name => "index_tasks_on_priority_id"
  add_index "tasks", ["project_id"], :name => "index_tasks_on_project_id"
  add_index "tasks", ["relevant_version_id"], :name => "index_tasks_on_relevant_version_id"
  add_index "tasks", ["status_id"], :name => "index_tasks_on_status_id"
  add_index "tasks", ["title"], :name => "index_tasks_on_title"

  create_table "tasks_users", :id => false, :force => true do |t|
    t.integer "task_id"
    t.integer "user_id"
  end

  add_index "tasks_users", ["task_id"], :name => "index_tasks_users_on_task_id"
  add_index "tasks_users", ["user_id"], :name => "index_tasks_users_on_user_id"

  create_table "user_project_participations", :force => true do |t|
    t.integer  "project_id"
    t.integer  "user_id"
    t.integer  "project_role_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "user_project_participations", ["project_id"], :name => "index_user_project_participations_on_project_id"
  add_index "user_project_participations", ["project_role_id"], :name => "index_user_project_participations_on_project_role_id"
  add_index "user_project_participations", ["user_id"], :name => "index_user_project_participations_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "users", ["name"], :name => "index_users_on_name"

  create_table "versions", :force => true do |t|
    t.string   "name"
    t.integer  "project_id"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "versions", ["name"], :name => "index_versions_on_name"
  add_index "versions", ["project_id"], :name => "index_versions_on_project_id"
  add_index "versions", ["status"], :name => "index_versions_on_status"

  create_table "wice_grid_serialized_queries", :force => true do |t|
    t.string   "name"
    t.string   "grid_name"
    t.text     "query"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "wice_grid_serialized_queries", ["grid_name", "id"], :name => "index_wice_grid_serialized_queries_on_grid_name_and_id"
  add_index "wice_grid_serialized_queries", ["grid_name"], :name => "index_wice_grid_serialized_queries_on_grid_name"

end
