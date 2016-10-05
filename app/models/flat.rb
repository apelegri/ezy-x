class Flat < ApplicationRecord
  validates :property_type, presence:true
  validates :price, presence:true
  validates :room_number, presence:true
  validates :square_meters, presence:true
  validates :pieces_number, presence:true
  validates :description, presence:true
  validates :opinion, presence:true
end
