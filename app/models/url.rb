class Url < ApplicationRecord
  validates :long_url, format: {with: /\A(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?\z/ix}

  def self.shorten_url
    short_url = SecureRandom.hex(4)
  end

end
