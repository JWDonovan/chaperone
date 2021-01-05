class Destination < ActiveRecord::Base
  belongs_to :user
  validates_associated :user

  mount_uploader :image, ImageUploader
  validates_presence_of :image
  validates_integrity_of :image
end