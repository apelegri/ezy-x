class RenamePiecesNumberColumnToFlats < ActiveRecord::Migration[5.0]
  def change
    rename_column :flats, :pieces_number, :room_number
  end
end
