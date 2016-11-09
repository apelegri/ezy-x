class Flat < ApplicationRecord

  belongs_to :user
  belongs_to :page
  mount_uploader :image, PhotoUploader

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

end
