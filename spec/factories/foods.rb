FactoryGirl.define do
  factory :food do
    name 'fish'
    paleo true
    slug  "fish"
  end
end

FactoryGirl.create(:food, name: 'Hamburgers', paleo: false, slug: 'hamburgers')  
FactoryGirl.create(:food, name: 'banana', paleo: true, slug: 'banana')
FactoryGirl.create(:food, name: 'bacon', paleo: true, slug: 'bacon')