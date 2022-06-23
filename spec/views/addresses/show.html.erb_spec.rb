require 'rails_helper'

RSpec.describe "addresses/show", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      line_1: "Line 1",
      line_2: "Line 2",
      suburb: "Suburb",
      state: "State",
      postcode: "Postcode"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Line 1/)
    expect(rendered).to match(/Line 2/)
    expect(rendered).to match(/Suburb/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/Postcode/)
  end
end
