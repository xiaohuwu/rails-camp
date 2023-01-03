class PostAuthoring < ApplicationRecord
    belongs_to :authored_post, class_name: 'Post'
    belongs_to :post_author, class_name: 'User'
end
