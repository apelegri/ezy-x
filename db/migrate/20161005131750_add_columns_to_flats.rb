class AddColumnsToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :bathroom, :integer
    add_column :flats, :wc, :integer
    add_column :flats, :floor, :integer
    add_column :flats, :terrace, :string
    add_column :flats, :cellar, :string
    add_column :flats, :transports, :string
  end
end
