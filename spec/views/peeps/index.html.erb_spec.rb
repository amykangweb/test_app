require 'rails_helper'

RSpec.describe "peeps/index", type: :view do
  before(:each) do
    assign(:peeps, [
      Peep.create!(
        :content => "Content"
      ),
      Peep.create!(
        :content => "Content"
      )
    ])
  end

  it "renders a list of peeps" do
    render
    assert_select "tr>td", :text => "Content".to_s, :count => 2
  end
end
