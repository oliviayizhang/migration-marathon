class AddFavoritesToBooks < ActiveRecord::Migration
  def up
    add_column :books, :favorites, :boolean, default: false
  end

  def down
    remove_column :books, :favorites
  end
end
