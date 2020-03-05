class CreateStores < ActiveRecord::Migration[5.0]
  def change
    create_table :stores do |t|
      t.string :name, null: false
      t.text :image
      t.text :text, null: false
      t.integer :phone_number, null: false, unique: true
      t.integer :place, null: false
      t.integer :business_hours, null: false
      t.text :payment, null: false
      t.references :erea_genre, null: false, foreign_key: true 
      t.timestamps
    end
  end
end
