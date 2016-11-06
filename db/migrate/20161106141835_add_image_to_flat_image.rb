class AddImageToFlatImage < ActiveRecord::Migration[5.0]
  def change
    add_column :flat_images, :images, :string, array: true, default: '{}'
  end
end
