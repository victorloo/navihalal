class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def default_photo
    if !self.photo?
      self.remote_photo_url = "http://www.gogecko.com.au/images/avatar.png"
      self.save
    end
  end
end
