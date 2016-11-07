class RenameRoomNumberToFlats < ActiveRecord::Migration[5.0]
  def change
    rename_column :flats, :room_number, :bedroom_number
  end
end
