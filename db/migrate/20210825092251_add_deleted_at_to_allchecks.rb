class AddDeletedAtToAllchecks < ActiveRecord::Migration[6.0]
  def change
    add_column :allchecks, :deleted_at, :datetime
    add_index :allchecks, :deleted_at
  end
end
