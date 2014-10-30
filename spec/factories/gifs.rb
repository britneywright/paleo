FactoryGirl.define do
  factory :gif do
    name 'Sherlock No'
    truthy false
    image_url 'no/sherlock-no-giphy.gif'
  end

  factory :invalid_gif do
    name nil
  end
end