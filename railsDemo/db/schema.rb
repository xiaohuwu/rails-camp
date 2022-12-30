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

ActiveRecord::Schema.define(version: 2022_12_30_090134) do

  create_table "posts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sys_menu", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", comment: "菜单表", force: :cascade do |t|
    t.string "menu_name", limit: 64, default: "NULL", null: false, comment: "菜单名"
    t.string "path", limit: 200, comment: "路由地址"
    t.string "component", comment: "组件路径"
    t.string "visible", limit: 1, default: "0", comment: "菜单状态（0显示 1隐藏）"
    t.string "status", limit: 1, default: "0", comment: "菜单状态（0正常 1停用）"
    t.string "perms", limit: 100, comment: "权限标识"
    t.string "icon", limit: 100, default: "#", comment: "菜单图标"
    t.bigint "create_by"
    t.datetime "create_time"
    t.bigint "update_by"
    t.datetime "update_time"
    t.integer "del_flag", default: 0, comment: "是否删除（0未删除 1已删除）"
    t.string "remark", limit: 500, comment: "备注"
  end

  create_table "sys_role", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", comment: "角色表", force: :cascade do |t|
    t.string "name", limit: 128
    t.string "role_key", limit: 100, comment: "角色权限字符串"
    t.string "status", limit: 1, default: "0", comment: "角色状态（0正常 1停用）"
    t.integer "del_flag", default: 0, comment: "del_flag"
    t.bigint "create_by"
    t.datetime "create_time"
    t.bigint "update_by"
    t.datetime "update_time"
    t.string "remark", limit: 500, comment: "备注"
  end

  create_table "sys_role_menu", primary_key: ["role_id", "menu_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "role_id", null: false, comment: "角色ID", auto_increment: true
    t.bigint "menu_id", default: 0, null: false, comment: "菜单id"
  end

  create_table "sys_user", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", comment: "用户表", force: :cascade do |t|
    t.string "user_name", limit: 64, default: "NULL", null: false, comment: "用户名"
    t.string "nick_name", limit: 64, default: "NULL", null: false, comment: "昵称"
    t.string "password", limit: 64, default: "NULL", null: false, comment: "密码"
    t.string "status", limit: 1, default: "0", comment: "账号状态（0正常 1停用）"
    t.string "email", limit: 64, comment: "邮箱"
    t.string "phonenumber", limit: 32, comment: "手机号"
    t.string "sex", limit: 1, comment: "用户性别（0男，1女，2未知）"
    t.string "avatar", limit: 128, comment: "头像"
    t.string "user_type", limit: 1, default: "1", null: false, comment: "用户类型（0管理员，1普通用户）"
    t.bigint "create_by", comment: "创建人的用户id"
    t.datetime "create_time", comment: "创建时间"
    t.bigint "update_by", comment: "更新人"
    t.datetime "update_time", comment: "更新时间"
    t.integer "del_flag", default: 0, comment: "删除标志（0代表未删除，1代表已删除）"
  end

  create_table "sys_user_role", primary_key: ["user_id", "role_id"], options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id", null: false, comment: "用户id", auto_increment: true
    t.bigint "role_id", default: 0, null: false, comment: "角色id"
  end

  create_table "tags", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["post_id"], name: "index_tags_on_post_id"
  end

end
