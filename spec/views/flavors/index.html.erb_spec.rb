require 'rails_helper'

RSpec.describe "flavors/index", type: :view do
  before(:each) do
    assign(:flavors, [
      Flavor.create!(
        : => "",
        : => ""
      ),
      Flavor.create!(
        : => "",
        : => ""
      )
    ])
  end

  it "renders a list of flavors" do
    render
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
