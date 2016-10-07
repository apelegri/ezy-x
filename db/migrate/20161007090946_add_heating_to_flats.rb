class AddHeatingToFlats < ActiveRecord::Migration[5.0]
  def change
    add_column :flats, :heating , :string
  end
end
