require 'spec_helper'

describe Stack do

  describe "GET /" do
    it "displays link to home page" do
      visit root_path
      expect(page).to have_link("Home")
    end
    it "displays link to stacks page" do
      visit root_path
      expect(page).to have_link("Stacks")
    end
    it "displays the create stack button" do
      visit root_path
      expect(page).to have_link("Create Stack")
    end
  end



end