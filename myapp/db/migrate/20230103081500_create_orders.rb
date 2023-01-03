class CreateOrders < ActiveRecord::Migration[5.0]
    def change
        create_table :orders do |t|
            t.belongs_to :user
            t.decimal :amount, precision: 8, scale: 2
            t.timestamps
        end

        # add_column :users, :orders_count, :integer, default: 0

    end


end
