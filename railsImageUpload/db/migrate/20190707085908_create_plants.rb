class CreatePlants < ActiveRecord::Migration[5.2]
  def change
    create_table :plants do |t|
      t.string :name
      t.string :scientific_name
      t.text :description
      t.string :picture


      t.timestamps
    end
  end
end
