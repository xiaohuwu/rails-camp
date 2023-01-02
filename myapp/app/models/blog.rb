class Blog < ApplicationRecord

    # belongs_to :user, class_name: "User",foreign_key: :user_id,primary_key: :id

    has_many :blog_tags, class_name: "BlogTags",foreign_key: :blog_id,primary_key: :id, inverse_of: :blog

    has_many :my_tags, through: :blog_tags, source: :tag

end
