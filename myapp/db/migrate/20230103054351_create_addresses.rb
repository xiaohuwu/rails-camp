class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.belongs_to :user
      t.string :street
      t.timestamps
    end
  end
end
