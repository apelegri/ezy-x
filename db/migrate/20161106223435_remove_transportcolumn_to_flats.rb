class RemoveTransportcolumnToFlats < ActiveRecord::Migration[5.0]
  def change
    remove_column :flats, :transport, :string
    remove_column :flats, :transports, :string
  end
end
