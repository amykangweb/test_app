require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :body => "MyText",
      :post => ""
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "textarea#comment_body[name=?]", "comment[body]"

      assert_select "input#comment_post[name=?]", "comment[post]"
    end
  end
end
