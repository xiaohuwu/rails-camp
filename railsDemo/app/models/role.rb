class Role < ApplicationRecord
  self.table_name = "sys_role"
  has_many :user_roles
  has_many :users, through: :user_roles

  has_many :role_menus
  has_many :menus, through: :role_menus
end
