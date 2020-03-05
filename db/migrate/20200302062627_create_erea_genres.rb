class CreateEreaGenres < ActiveRecord::Migration[5.0]
  def change
    create_table :erea_genres do |t|
      t.string :name, null: false
      t.text :parent_id
      t.timestamps
    end
  end
end
