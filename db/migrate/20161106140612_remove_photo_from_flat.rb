class RemovePhotoFromFlat < ActiveRecord::Migration[5.0]
  def change
    remove_column :flats, :photo, :string
  end
end
