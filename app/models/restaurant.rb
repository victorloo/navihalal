class Restaurant < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  
  after_validation :default_photo
  
end
