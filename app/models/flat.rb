class Flat < ApplicationRecord
  validates :property_type, presence:true
  validates :price, presence:true
  validates :room_number, presence:true
  validates :square_meters, presence:true
  validates :pieces_number, presence:true
  validates :description, presence:true
  validates :opinion, presence:true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  belongs_to :user

end
