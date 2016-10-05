class RenamePopertyTypeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :flats, :poperty_type, :property_type
  end
end
