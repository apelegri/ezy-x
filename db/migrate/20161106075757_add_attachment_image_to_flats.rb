class AddAttachmentImageToFlats < ActiveRecord::Migration
  def self.up
    change_table :flats do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :flats, :image
  end
end
