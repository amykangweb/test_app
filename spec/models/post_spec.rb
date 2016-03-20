require 'rails_helper'

describe Post, type: :model do
  before do
    @post = FactoryGirl.build(:first)
    @post.save
  end

  it "should be valid with title and content" do
    expect(@post).to be_valid
  end

  it "should not be valid without title" do
    post = FactoryGirl.build(:first, title: "")
    expect(post).not_to be_valid
  end

  it "should not be valid without content" do
    post = FactoryGirl.build(:first, content: "")
    expect(post).not_to be_valid
  end
end
