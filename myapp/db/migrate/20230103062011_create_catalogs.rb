class CreateCatalogs < ActiveRecord::Migration[5.0]
  def change
    create_table :catalogs do |t|
      t.belongs_to :parent_catalog
      t.string :name
      t.timestamps
    end

  end
end
