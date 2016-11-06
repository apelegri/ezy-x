class FlatImage < ApplicationRecord
  belongs_to :flat

  mount_uploader :image, PhotoUploader
  # mount_uploader :image, ProductImageUploader

  validates :image, :flat_id, presence: true

end
