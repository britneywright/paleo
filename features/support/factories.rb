require 'factory_girl'

FactoryGirl.define do

  factory :food do
    name 'fish'
    paleo true
    slug  "fish"
  end

  factory :gif do
    name 'Sherlock No'
    truthy false
    image_url 'no/sherlock-no-giphy.gif'
  end
end

food1 = FactoryGirl.build(:food, name: 'Hamburgers', paleo: false, slug: 'hamburgers').save  
food2 = FactoryGirl.build(:food, name: 'banana', paleo: true, slug: 'banana').save
food3 = FactoryGirl.build(:food, name: 'bacon', paleo: true, slug: 'bacon').save

gif1 = FactoryGirl.build(:gif, name: 'Emma Stone No', truthy: false, image_url: 'no/emma-stone-no-professionalfangirls.gif').save
gif2 = FactoryGirl.build(:gif, name: 'Friends Yes', truthy: true, image_url: 'yes/friends-yes-likegif.gif').save
