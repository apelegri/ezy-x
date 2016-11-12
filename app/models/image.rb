class Image < ApplicationRecord
  belongs_to :flat
  mount_uploader :image, PhotoUploader
end
