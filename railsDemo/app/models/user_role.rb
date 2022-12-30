class UserRole < ApplicationRecord
  self.table_name = "sys_user_role"
  belongs_to :user
  belongs_to :role
end
