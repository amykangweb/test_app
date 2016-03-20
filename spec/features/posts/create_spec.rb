require 'rails_helper'

describe "Creating Post" do
  before do
    @post = FactoryGirl.build(:first)
    @post.save
  end

  it "redirects to the post page on success" do
    visit '/posts'
    click_link "New Post"
    fill_in "Title", with: @post.title
    fill_in "Content", with: @post.content
    click_button "Create Post"
    expect(page).to have_content(@post.title)
    expect(page).to have_content(@post.content)
  end

  it "shows error message when title is blank" do
    visit '/posts'
    click_link "New Post"
    fill_in "Title", with: ""
    fill_in "Content", with: @post.content
    click_button "Create Post"
    expect(page).to have_content("Title can't be blank")
  end

  it "shows error message when content is blank" do
    visit '/posts'
    click_link "New Post"
    fill_in "Title", with: @post.title
    fill_in "Content", with: ""
    click_button "Create Post"
    expect(page).to have_content("Content can't be blank")
  end
end
