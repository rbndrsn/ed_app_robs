require 'spec_helper'

describe StacksController do
  let!(:stack) { create(:stack) }
  subject { stack }
  
  describe "GET #index" do
    it "populates an array of Stacks" do
      get :index
      expect(assigns(:stacks)).to match_array [stack]
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
    context "with an existing stack" do
      it "assigns the requested stack to @stack" do
        get :show, id: stack.id
        expect(assigns(:stack)).to eq stack
      end
    
      it "renders the show.html.erb template" do
        get :show, id: stack.id
        expect(response).to render_template :show
      end
    
      it "responds with a 200 OK status code" do
        get :show, id: stack.id
        expect(response.response_code).to eq 200
      end
    end
  end
    
    context "with a non-existant stack" do
      it "responds with an Mongoid::Errors::DocumentNotFound error" do
        expect {
          get :show, id: "-1"
        }.to raise_error Mongoid::Errors::DocumentNotFound
      end
    end
  

  describe "DELETE #destroy" do
    context "with an existing stack" do
      before :each do
        @stack = create(:stack)
      end
  
      it "deletes the stack" do
        expect{ delete :destroy, id: @stack }.to change(Stack, :count).by(-1)
      end
    end
  end
end
