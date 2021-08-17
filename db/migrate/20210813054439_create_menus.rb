class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.string  :menu_name, null: false
      t.integer :price,     null: false
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
