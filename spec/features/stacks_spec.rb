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

  describe "GET /stacks" do
    it "displays a list of stacks" do
      stack = Stack.create(name: "new_stack")
      stack2 = Stack.create(name: "another_stack")
      visit stacks_path
      expect(page).to have_content(stack.name)
      expect(page).to have_content(stack2.name)
    end
  end

  describe "GET /stacks/new" do
    it "displays a form to add a stack" do
      visit new_stack_path
      expect(page).to have_button('Create Stack')
    end
    it "creates a new stack" do
      visit new_stack_path
      fill_in "Name", :with => "Testing stacks"
      fill_in "Description", :with => "Lorem ipsum."
      click_button "Create Stack"
      stack = Stack.find_by(name:"Testing stacks")
      expect(stack.name).to eq "Testing stacks"
    end
  end

  describe "GET /stack/:id" do
    it "display a link to view a stack" do
      stack = Stack.create(name: "new_stack")
      visit stacks_path
      expect(page).to have_link("View")
    end
    it "displays a single stack" do
      stack = Stack.create(name: "new_stack")
      stack = Stack.find_by(name:"new_stack")
      visit stack_path(stack.id)
      expect(page).to have_content(stack.name)
    end
  end

  describe "DESTROY /stack" do
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