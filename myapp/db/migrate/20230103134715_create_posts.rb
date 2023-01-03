class CreatePosts < ActiveRecord::Migration[5.0]
    def change
        create_table :posts do |t|
            t.string :title
            t.integer :author_id
            t.integer :editor_id
            t.timestamps
        end
    end
end
