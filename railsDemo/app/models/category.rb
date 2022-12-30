class Category < ApplicationRecord
  self.table_name="sg_category"
  has_many :articles
end
