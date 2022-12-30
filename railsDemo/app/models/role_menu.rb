class RoleMenu < ApplicationRecord
  self.table_name = "sys_role_menu"
  belongs_to :menu
  belongs_to :role
end
