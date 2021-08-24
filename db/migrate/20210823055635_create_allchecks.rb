class CreateAllchecks < ActiveRecord::Migration[6.0]
  def change
    create_table :allchecks do |t|
      t.integer :allcheck, null: false 
      t.references :room, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
