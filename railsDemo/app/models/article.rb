class Article < ApplicationRecord
  self.table_name = "sg_article"
  belongs_to :category, foreign_key: "category_id", primary_key: "id"
end
