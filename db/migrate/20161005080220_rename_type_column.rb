class RenameTypeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :flats, :type, :poperty_type
  end
end
