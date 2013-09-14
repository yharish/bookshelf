class RemoveTableOwnership < ActiveRecord::Migration
  def up
  	drop_table :ownerships
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
