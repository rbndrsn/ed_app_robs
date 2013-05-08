require 'spec_helper'

describe Stack do

  it "creates a new instance of a Stack" do
    stack = Stack.new
    expect(stack).to be_an_instance_of(Stack)
  end

  it "is created and has an id" do
    stack = Stack.create()
    expect(stack.id).to_not eq nil
  end

  it "has a card" do
    name = 'Stack 1'
    description = 'Lorem ipsum dolor'
    is_custom = false
    stack = Stack.new(
      name: name,
      description: description,
      is_custom: is_custom,
      cards: [
        {
        front: "This is the front",
        back: "This is the back"
        },
        {
        front: "Second front",
        back: "Second back"
        },
      ]
    )
    expect(stack.cards).to_not eq nil
  end

  it "creates a custom stack" do
    stack = Stack.new( is_custom: true  )
    expect(stack.is_custom).to eq true
  end

  it "finds all stacks tagged with Ruby" do
    # ----   Stack.all(:tag_ids => [tag._id])
    s1 = Stack.create( name: "Beginning Ruby" )
    s2 = Stack.create( name: "Advanced Ruby" )
    t1 = Tag.create( name: "Ruby" )
    s1.tags << t1
    s2.tags << t1
    ruby_search = Stack.all(:tag_ids => [t1._id])
    expect(ruby_search).to_not eq nil
  end


end #end Stack