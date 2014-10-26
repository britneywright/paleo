FactoryGirl.define do
  factory :food do
    name 'fish'
    paleo true
    slug  "fish"
  end
end

# FactoryGirl.build(:food, name: 'Hamburgers', paleo: false, slug: 'hamburgers')  
# FactoryGirl.build(:food, name: 'banana', paleo: true, slug: 'banana')
# FactoryGirl.build(:food, name: 'bacon', paleo: true, slug: 'bacon')