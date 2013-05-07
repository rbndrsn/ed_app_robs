require 'spec_helper'

describe Card do
  describe '.new' do
    it "creates a new instance of a Card" do
      card = Card.new
      expect(card).to be_an_instance_of(Card)
    end
  end
end