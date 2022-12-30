class User < ApplicationRecord
  self.table_name = 'sys_user'
  has_many :user_roles
  has_many :roles, through: :user_roles
end
