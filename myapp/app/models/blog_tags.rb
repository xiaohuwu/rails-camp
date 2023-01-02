class BlogTags < ApplicationRecord

    belongs_to :blog, class_name: "Blog",foreign_key: :blog_id,primary_key: :id

    belongs_to :tag, class_name: "Tag",foreign_key: :tag_id,primary_key: :id

    # belongs_to :user, class_name: "User",foreign_key: :user_id,primary_key: :id


end
