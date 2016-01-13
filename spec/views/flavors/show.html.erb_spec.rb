require 'rails_helper'

RSpec.describe "flavors/show", type: :view do
  before(:each) do
    @flavor = assign(:flavor, Flavor.create!(
      : => "",
      : => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end
