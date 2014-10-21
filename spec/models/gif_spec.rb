require "rails_helper"

describe Gif do

  let(:gif) { Gif.new(
    name: "Emma Stone No",
    truthy: true,
    image_url: "something.gif"
    )
  }

  it "is valid" do
    expect(gif).to be_valid
  end

  it "is invalid with a duplicate image image url" do
    Gif.create(name: "new gif", image_url: "something.gif", truthy: true)
    expect(gif).to be_invalid
  end

  describe "gets one image based on given truthiness" do
    before :each do 
      @positive = Gif.create(name: "one gif", image_url: "one.gif", truthy: true)
      @negative = Gif.create(name: "two gif", image_url: "two.gif", truthy: false)
    end

    it "gets a truthy image" do
      expect(Gif.random_for(true)).to eq (@positive || @gif2)
    end

    it "gets a falsey image" do
      expect(Gif.random_for(false)).to eq (@negative || @gif1)
    end
  end
end