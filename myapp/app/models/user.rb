class User < ApplicationRecord
    has_many :authored_posts, class_name: 'Post', foreign_key: 'author_id'
    has_many :edited_posts, class_name: 'Post', foreign_key: 'editor_id'

    # has_many :addresses
    # has_many :orders
end
