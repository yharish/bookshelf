class CreateOwnerships < ActiveRecord::Migration
  def change
    create_table :ownerships do |t|
      t.integer :book_id
      t.integer :user_id
      t.boolean :has_read
      t.boolean :is_reading
      t.boolean :will_read
      t.integer :ratings
      t.text :summary
      t.datetime :created_at

      t.timestamps
    end
  end
end
