class CreateCheckoutsTable < ActiveRecord::Migration
  def up
    create_table :checkouts do |table|
      table.integer :book_id, null: false
      table.string :borrower, null: false
    end
  end

  def down
    drop_table :checkouts
  end
end
