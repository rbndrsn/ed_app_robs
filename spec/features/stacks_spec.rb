require 'spec_helper'

describe Stack do

  # THIS REFERS TO NAVIGATION LINKS NOT STACK SPECIFIC
  # describe "GET /" do
  #   it "displays link to home page" do
  #     visit root_path
  #     expect(page).to have_link("Home")
  #   end
  #   it "displays link to stacks page" do
  #     visit root_path
  #     expect(page).to have_link("Stacks")
  #   end
  #   it "displays the create stack button" do
  #     visit root_path
  #     expect(page).to have_link("Create Stack")
  #   end
  # end

  
  describe "View Stack -- GET /stack/:id" do
    it "display a link to view a stack" do
      stack = Stack.create(name: "new_stack")
      visit stacks_path
      expect(page).to have_link("View")
    end
    it "displays a single stack" do
      stack = Stack.create(name: "new_stack")
      stack = Stack.find_by(name:"new_stack")
    end
  end

  describe "Delete Stack -- DESTROY /stack" do
    it "deletes a stack" do
      stack = Stack.create(name: "new_stack")
      visit stacks_path
      expect(page).to have_content(stack.name)
      expect(page).to have_link('Delete Stack')
      click_link 'Delete Stack'
      expect(page).to_not have_content(stack.name)
    end
  end

end