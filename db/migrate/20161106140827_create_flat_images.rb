class CreateFlatImages < ActiveRecord::Migration[5.0]
  def change
    create_table :flat_images do |t|

      t.timestamps
    end
  end
end
