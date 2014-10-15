require 'rails_helper'

describe Food do

  let(:food) { Food.new(
    name: 'bread',
    paleo: true
  )}

  it "is valid" do
    expect(food).to be_valid
  end

  it "is invalid without a name" do
    food.name = nil
    expect(food).to be_invalid
  end

  it "has a unique name" do
    Food.create(name:"bread", paleo: true)
    expect(food).to be_invalid
  end

  it "is invalid without a paleo value" do
    food.paleo = nil
    expect(food).to be_invalid
  end

  it "is paleo" do
    expect(food).to be_paleo
  end

  it "finds a food" do
    candy = Food.create(name: "candy", paleo: true)
    expect(Food.search("candy")).to eq [candy]
  end

  it "doesn't find a food" do
    expect(Food.search("candy")).to eq []
  end

  it "has a slug" do
    twinkie = Food.create(name: 'Twinkie', paleo: true)
    expect(twinkie.slug).to eq "twinkie"
  end
end