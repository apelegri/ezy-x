class AddColumnsenvironmentToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :bus, :string
    add_column :flats, :metro, :string
    # add_column :flats, :school, :string
    # add_column :flats, :shop, :string
  end
end
