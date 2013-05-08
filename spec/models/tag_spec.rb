require 'spec_helper'

describe Tag do

  it "creates a new instance of a Tag" do
    tag = Tag.new
    expect(tag).to be_an_instance_of(Tag)
  end


end #end Tag