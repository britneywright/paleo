class Food < ActiveRecord::Base
  validates :name, presence: :true
  validates :name, length: {minimum: 1,
    too_short: "must be at least 1 character"}
  validates :paleo, inclusion: [true, false]  

  before_validation :set_slug

    def set_slug
      self.slug = name.parameterize unless name.blank?
    end

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end