class AddDeletedAtToRooms < ActiveRecord::Migration[6.0]
  def change
    add_column :rooms, :deleted_at, :datetime
    add_index :rooms, :deleted_at
  end
end
