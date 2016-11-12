class RenameFlatimagesToImages < ActiveRecord::Migration[5.0]
  def change
    rename_table :flat_images, :images
  end
end
