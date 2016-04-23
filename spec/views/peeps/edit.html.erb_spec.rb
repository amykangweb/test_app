require 'rails_helper'

RSpec.describe "peeps/edit", type: :view do
  before(:each) do
    @peep = assign(:peep, Peep.create!(
      :content => "MyString"
    ))
  end

  it "renders the edit peep form" do
    render

    assert_select "form[action=?][method=?]", peep_path(@peep), "post" do

      assert_select "input#peep_content[name=?]", "peep[content]"
    end
  end
end
