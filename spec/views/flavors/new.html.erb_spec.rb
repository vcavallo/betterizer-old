require 'rails_helper'

RSpec.describe "flavors/new", type: :view do
  before(:each) do
    assign(:flavor, Flavor.new(
      : => "",
      : => ""
    ))
  end

  it "renders new flavor form" do
    render

    assert_select "form[action=?][method=?]", flavors_path, "post" do

      assert_select "input#flavor_[name=?]", "flavor[]"

      assert_select "input#flavor_[name=?]", "flavor[]"
    end
  end
end
