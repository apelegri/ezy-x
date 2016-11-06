class RemoveImagecolumnsFromFlat < ActiveRecord::Migration[5.0]
  def change
    remove_column :flats, :image_file_name, :string
    remove_column :flats, :image_content_type, :string
    remove_column :flats, :image_file_size, :integer
    remove_column :flats, :image_updated_at, :datetime
  end
end
