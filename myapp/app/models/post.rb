class Post < ApplicationRecord
    belongs_to :author, class_name: 'User'
    belongs_to :editor, class_name: 'User'
end
