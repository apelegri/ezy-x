class FlatImage < ApplicationRecord
  belongs_to :flat

  mount_uploader :image, PhotoUploader
  # mount_uploader :image, ProductImageUploader

  validates :image, presence: true

end
