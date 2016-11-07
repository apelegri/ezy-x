class Flat < ApplicationRecord
  belongs_to :user
  has_many :flat_images, dependent: :destroy
  accepts_nested_attributes_for :flat_images
  validates_associated :flat_images

  validates :property_type, presence:true
  validates :price, presence:true
  validates :bedroom_number, presence:true
  validates :square_meters, presence:true
  validates :room_number, presence:true
  validates :description, presence:true
  validates :opinion, presence:true
  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
