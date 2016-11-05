class RemoveUseridFromFlats < ActiveRecord::Migration[5.0]
  def change
    remove_column :flats, :user_id, :integer
  end
end
