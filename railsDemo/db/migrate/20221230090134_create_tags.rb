class CreateTags < ActiveRecord::Migration[5.2]
    def change
        create_table :tags do |t|
            t.string :name
            t.belongs_to :post, index: true
            t.timestamps
        end
    end
end
