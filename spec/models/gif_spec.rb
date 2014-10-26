require "rails_helper"

describe Gif do

  it "is valid" do
    expect(build(:gif)).to be_valid
  end

  it "is invalid with a duplicate image image url" do
    gif = build(:gif)
    Gif.create(name: "new gif", image_url: "no/sherlock-no-giphy.gif", truthy: true)
    expect(gif).to be_invalid
  end

  describe "gets one image based on given truthiness" do
    before :each do 
      @positive = create(:gif, name: 'Friends Yes', truthy: true, image_url: 'yes.gif')
      @negative = create(:gif, name: 'Emma Stone No', truthy: false, image_url: 'no.gif')
    end

    it "gets a truthy image" do
      expect(Gif.random_for(true)).to eq @positive
    end

    it "gets a falsey image" do
      expect(Gif.random_for(false)).to eq @negative
    end
  end
end