require 'rails_helper'

Rspec.describe PostsController, type: :controller do
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "POST create" do
    it "renders the show template" do
      post :create
      expect(response).to render_template("show")
    end
  end
end
