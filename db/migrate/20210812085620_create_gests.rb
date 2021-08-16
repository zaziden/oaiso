class CreateGests < ActiveRecord::Migration[6.0]
  def change
    create_table :gests do |t|
      t.string :gest_name, null: false
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
