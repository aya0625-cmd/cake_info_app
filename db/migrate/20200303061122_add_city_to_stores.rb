class AddCityToStores < ActiveRecord::Migration[5.0]
  def change
    add_column :stores, :city, :string
  end
end
