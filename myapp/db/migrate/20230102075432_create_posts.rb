class CreatePosts < ActiveRecord::Migration[5.0]
    def change
        create_table :blogs do |t|
            t.string :title
            t.timestamps
        end

        create_table :tags do |t|
            t.string :name
            t.timestamps
        end

        create_table :blog_tags do |t|
            t.belongs_to :blog, index: true
            t.belongs_to :tag, index: true
            t.string :content
            t.timestamps
        end
    end
end
