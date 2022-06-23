require 'rails_helper'

RSpec.describe "addresses/index", type: :view do
  before(:each) do
    assign(:addresses, [
      Address.create!(
        line_1: "Line 1",
        line_2: "Line 2",
        suburb: "Suburb",
        state: "State",
        postcode: "Postcode"
      ),
      Address.create!(
        line_1: "Line 1",
        line_2: "Line 2",
        suburb: "Suburb",
        state: "State",
        postcode: "Postcode"
      )
    ])
  end

  it "renders a list of addresses" do
    render
    assert_select "tr>td", text: "Line 1".to_s, count: 2
    assert_select "tr>td", text: "Line 2".to_s, count: 2
    assert_select "tr>td", text: "Suburb".to_s, count: 2
    assert_select "tr>td", text: "State".to_s, count: 2
    assert_select "tr>td", text: "Postcode".to_s, count: 2
  end
end
