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

  it "gets a truthy image" #do
    #expect(Gif.truthiness(true)).to be_truthy
  #end

  it "gets a falsey image" #do
    #expect(Gif.truthiness(false)).to be_falsey
  #end
end