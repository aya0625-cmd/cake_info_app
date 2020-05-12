class AddUserRefToCounselings < ActiveRecord::Migration[5.0]
  def change
    add_reference :counselings, :user, foreign_key: true
  end
end
