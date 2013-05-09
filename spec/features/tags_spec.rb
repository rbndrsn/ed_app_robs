require 'spec_helper'

describe Tag do

  describe "Create Tag --  GET /tag/new" do
    it "displays a form to add a tag" do
      visit new_tag_path
      expect(page).to have_button('Create Tag')
    end
    it "creates a new tag" do
      visit new_tag_path
      fill_in "Name", :with => "Test Tag"
      click_button "Create Tag"
      tag = Tag.find_by(name:"Test Tag")
      expect(tag.name).to eq "Test Tag"
    end
  end
end

  describe "List Tags -- GET /tags" do
    it "displays a list of tags" do
      tag = Tag.create(name: "new_tag")
      tag2 = Tag.create(name: "another_tag")
      visit tags_path
      expect(page).to have_content(tag.name)
      expect(page).to have_content(tag2.name)
    end
  end

   describe "View Tag -- GET /tag/:id" do
    it "display a link to view a tag" do
      tag = Tag.create(name: "new_tag")
      visit tags_path
      expect(page).to have_link("View")
    end
    it "displays a single tag" do
      tag = Tag.create(name: "new_tag")
      tag = Tag.find_by(name: "new_tag")
      visit tag_path(tag.id)
      expect(page).to have_content(tag.name)
    end
  end

  describe "Edit tag -- GET /tags/:id/edit" do
    it "display a link to edit a tag" do
      tag = Tag.create(name: "new_tag")
      visit tag_path(tag.id)
      expect(page).to have_link("Edit")
    end
    it "displays the edit form" do
      tag = Tag.create(name: "new_tag")
      visit edit_tag_path(tag.id)
      expect(page).to have_button('Update Tag')
    end
    it "updates a tag with a new name" do
      tag = Tag.create(name: "new_tag")
      visit edit_tag_path(tag.id)
      fill_in "Name", :with => "changed_tag"
      click_button 'Update Tag'
      visit tag_path(tag.id)
      expect(page).to have_content("changed_tag")
    end
  end

  describe "Delete Tag -- DESTROY /tag" do
    it "deletes a tag" do
      tag = Tag.create(name: "new_tag")
      visit tags_path
      expect(page).to have_content(tag.name)
      expect(page).to have_link('Delete Tag')
      click_link 'Delete Tag'
      expect(page).to_not have_content(tag.name)
    end
  end
