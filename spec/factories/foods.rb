FactoryGirl.define do
  factory :food do
    name 'fish'
    paleo true
    slug  "fish"

    factory :invalid_food do
      name nil
    end
  end
end