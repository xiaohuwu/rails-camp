class User < ApplicationRecord
<<<<<<< HEAD
    # has_many :comment, class_name: "Post",foreign_key: :user_id,primary_key: :id

=======
    has_many :post_authorings,  foreign_key: 'post_author_id'
    has_many :authored_posts,  through: :post_authorings

    has_many :edited_posts, class_name: 'Post', foreign_key: 'editor_id'

    # has_many :addresses
    # has_many :orders
>>>>>>> origin/master
end
