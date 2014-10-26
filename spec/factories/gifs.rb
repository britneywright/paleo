FactoryGirl.define do
  factory :gif do
    name 'Sherlock No'
    truthy false
    image_url 'no/sherlock-no-giphy.gif'
  end
end

FactoryGirl.build(:gif, name: 'Friends Yes', truthy: true, image_url: 'yes.gif')
FactoryGirl.build(:gif, name: 'Emma Stone No', truthy: false, image_url: 'no.gif')