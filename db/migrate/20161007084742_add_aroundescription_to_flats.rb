class AddAroundescriptionToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :around_description, :string
    add_column :flats, :environment, :string
  end
end
