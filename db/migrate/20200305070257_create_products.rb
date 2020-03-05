class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, null: false
      t.text :text, null: false
      t.text :image
      t.integer :price
      t.references :store, null: false, foreign_key: true
      t.timestamps
    end
  end
end
