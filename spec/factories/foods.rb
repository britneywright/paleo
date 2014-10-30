FactoryGirl.define do
  factory :food do
    name 'fish'
    paleo true
    slug  "fish"
  end

  factory :invalid_food do
    name nil
  end
end