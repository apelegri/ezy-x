class AddUseridToFLats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :user_id, :integer
  end
end
