require 'rails_helper'

describe PostsController, type: :controller do
  before do
    @post = FactoryGirl.build(:first)
  end

  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "POST create" do
    it "renders the show template" do
      post :create, :post => { :title => @post.title, :content => @post.content }
      expect(response).to redirect_to(post_path(@post))
    end
  end
end
