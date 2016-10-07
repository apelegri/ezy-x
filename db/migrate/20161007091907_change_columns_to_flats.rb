class ChangeColumnsToFlats < ActiveRecord::Migration[5.0]
  def change
    change_column :flats, :bathroom, :string
    change_column :flats, :wc, :string
    change_column :flats, :floor, :string
  end
end
