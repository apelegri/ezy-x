class RemoveImagecolFromImages < ActiveRecord::Migration[5.0]
  def change
    remove_column :images, :images, :string, default: [], array: true
  end
end
