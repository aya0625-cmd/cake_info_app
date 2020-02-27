class ChangeBirthdayToUser < ActiveRecord::Migration[5.0]
  def change
    change_column :users, :birthday, :date, null: true, default: 0
  end
end
