class Food < ActiveRecord::Base
  validates :name, :paleo, presence: :true
  validates :name, length: {minimum: 1,
    too_short: "must be at least 1 character"}

  def self.search(query)
    where("name like ?", "%#{query}%")
  end
end