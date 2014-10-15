class Gif < ActiveRecord::Base
  validates :name, :image_url, presence: true
    validates :image_url, allow_blank: false, format: {
    with: %r{\.(gif)\Z}i,
    message: 'must be a URL for GIF image'
  }
  validates :image_url, uniqueness: true

  def self.truthiness(truthiness)
    where(truthy: truthiness).sample
  end
end