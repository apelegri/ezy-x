class CreateFlats < ActiveRecord::Migration[5.0]
  def change
    create_table :flats do |t|
      t.string :type
      t.integer :price
      t.integer :room_number
      t.integer :square_meters
      t.integer :pieces_number
      t.string :description
      t.string :opinion

      t.timestamps
    end
  end
end
