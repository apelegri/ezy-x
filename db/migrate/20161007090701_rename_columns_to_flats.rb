class RenameColumnsToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :transport, :string
    add_column :flats, :school, :string
    add_column :flats, :shop, :string
  end
end
