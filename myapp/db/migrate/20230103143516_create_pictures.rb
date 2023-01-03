class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.bigint  :imageable_id
      t.string  :imageable_type
      t.string :pic
      t.timestamps
    end
  end
end
