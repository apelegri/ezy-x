class AddImageToFLats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :image, :string
  end
end
