require 'rails_helper'

RSpec.describe "peeps/show", type: :view do
  before(:each) do
    @peep = assign(:peep, Peep.create!(
      :content => "Content"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Content/)
  end
end
