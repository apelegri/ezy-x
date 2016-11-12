class Flat < ApplicationRecord

  belongs_to :user
  belongs_to :page

  geocoded_by :address
  after_validation :geocode, if: :address_changed?

  has_many :images, :dependent => :destroy
  accepts_nested_attributes_for :images, allow_destroy: true
end
