class Room < ApplicationRecord
  belongs_to :user
  has_one :reservation
  mount_uploader :image, ImageUploader
end
