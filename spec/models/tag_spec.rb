require 'spec_helper'

describe Tag do

  it "creates a new instance of a Tag" do
    tag = Tag.new
    expect(tag).to be_an_instance_of(Tag)
  end

  it "is created and has an id" do
    tag = Tag.create()
    expect(tag.id).to_not eq nil
  end

end #end Stack