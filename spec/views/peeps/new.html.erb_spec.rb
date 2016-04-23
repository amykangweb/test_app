require 'rails_helper'

RSpec.describe "peeps/new", type: :view do
  before(:each) do
    assign(:peep, Peep.new(
      :content => "MyString"
    ))
  end

  it "renders new peep form" do
    render

    assert_select "form[action=?][method=?]", peeps_path, "post" do

      assert_select "input#peep_content[name=?]", "peep[content]"
    end
  end
end
