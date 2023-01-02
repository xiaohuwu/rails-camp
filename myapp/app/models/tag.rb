class Tag < ApplicationRecord
    has_many :blog_tags, class_name: "BlogTags", foreign_key: :blog_id, primary_key: :id
    has_many :blogs, through: :blog_tags
end
