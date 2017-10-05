class RemoveBorrowerFromCheckouts < ActiveRecord::Migration
  def up
    remove_column :checkouts, :borrower
  end

  def down
    add_column :checkouts, :borrower, :string, null: false
  end
end
