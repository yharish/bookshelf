class RemoveColumnsAddCategoryFromOwnership < ActiveRecord::Migration
  def up
  	remove_column :ownerships, :has_read
  	remove_column :ownerships, :is_reading
  	remove_column :ownerships, :will_read
  	add_column :ownerships, :category, :string
  end

  def down
  	add_column :ownerships, :has_read, :boolean
  	add_column :ownerships, :is_reading, :boolean
  	add_column :ownerships, :will_read, :boolean
  	remove_column :ownerships, :category
  end
end
