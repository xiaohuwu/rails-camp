class Menu < ApplicationRecord
  self.table_name = "sys_menu"
  has_many :role_menus
  has_many :roles, through: :role_menus
end
