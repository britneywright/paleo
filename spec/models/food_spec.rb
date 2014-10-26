require 'rails_helper'

describe Food do

  it "is valid" do
    expect(build(:food)).to be_valid
  end

  it "is invalid without a name" do
    food = build(:food)
    food.name = nil
    expect(food).to be_invalid
  end

  it "has a unique name" do
    food = build(:food)
    Food.create(name: "fish", paleo: true)
    expect(food).to be_invalid
  end

  it "is invalid without a paleo value" do
    food = build(:food)
    food.paleo = nil
    expect(food).to be_invalid
  end

  it "is paleo" do
    food = build(:food)
    expect(food).to be_paleo
  end

  it "finds a food" do
    food = create(:food)
    expect(Food.search("fish")).to eq [food]
  end

  it "doesn't find a food" do
    expect(Food.search("fish")).to eq []
  end

  it "has a slug" do
    food = build(:food)
    expect(food.slug).to eq "fish"
  end
end