class AddPhotoToFlat < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :photo, :string
  end
end
