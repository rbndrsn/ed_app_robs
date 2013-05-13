require 'spec_helper'

describe TagsController do
  let!(:tag) { create(:tag) }
  subject { tag }

  describe "GET #index" do
    it "populates an array of Tags" do
      get :index
      expect(assigns(:tags)).to match_array [tag]
    end

    it "renders the index.html.erb template" do
      get :index
      expect(response).to render_template :index
    end

    it "responds with a 200 OK status code" do
      get :index
      expect(response.response_code).to eq 200
    end
  end

  describe "GET #show" do
    context "with an existing tag" do
      it "assigns the requested tag to @tag" do
        get :show, id: tag.id
        expect(assigns(:tag)).to eq tag
      end

      it "renders the show.html.erb template" do
        get :show, id: tag.id
        expect(response).to render_template :show
      end

      it "responds with a 200 OK status code" do
        get :show, id: tag.id
        expect(response.response_code).to eq 200
      end
    end
  end

    context "with a non-existant tag" do
      it "responds with an Mongoid::Errors::DocumentNotFound error" do
        expect {
          get :show, id: "-1"
        }.to raise_error Mongoid::Errors::DocumentNotFound
      end
    end


  describe "DELETE #destroy" do
    context "with an existing tag" do
      before :each do
        @tag = create(:tag)
      end

      it "deletes the tag" do
        expect{ delete :destroy, id: @tag }.to change(Tag, :count).by(-1)
      end
    end
  end
end
