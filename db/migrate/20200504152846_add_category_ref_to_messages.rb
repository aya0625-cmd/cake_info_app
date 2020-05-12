class AddCategoryRefToMessages < ActiveRecord::Migration[5.0]
  def change
    add_reference :messages, :category, foreign_key: true
  end
end
