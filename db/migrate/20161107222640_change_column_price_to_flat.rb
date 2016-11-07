class ChangeColumnPriceToFlat < ActiveRecord::Migration[5.0]
  def change
    change_column :flats, :price, :string
  end
end
