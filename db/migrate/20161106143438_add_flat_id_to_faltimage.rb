class AddFlatIdToFaltimage < ActiveRecord::Migration[5.0]
  def change
    add_column :flat_images, :flat_id, :integer
  end
end
