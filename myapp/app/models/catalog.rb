#自关联
class Catalog < ApplicationRecord
  has_many :subcatalogs, class_name: "Catalog", foreign_key: "parent_catalog_id"
  belongs_to :parent_catalog, class_name: "Catalog", optional: true
end
