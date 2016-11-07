class RemoveTransportcolumnToFlats < ActiveRecord::Migration[5.0]
  def change
     add_column :flats, :transport, :string
     add_column :flats, :transports, :string
  end
end
