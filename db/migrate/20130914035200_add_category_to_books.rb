class AddCategoryToBooks < ActiveRecord::Migration
  def up
  	add_column :books, :category, :string
  	remove_column :books_users, :category, :string
  end

  def down
  	remove_column :books, :category, :string
  	add_column :books_users, :category, :string
  end
end
