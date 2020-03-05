class AddPrefectureToStores < ActiveRecord::Migration[5.0]
  def change
    add_column :stores, :prefecture, :string
  end
end
