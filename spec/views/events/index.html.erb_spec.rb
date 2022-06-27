require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        title: "Title",
        description: nil,
        address: "Address",
        venue: "Venue",
        private: false,
        capacity: 2,
        price: 3,
        user: nil,
        status: 4,
        category: nil,
        sub_category: "Sub Category"
      ),
      Event.create!(
        title: "Title",
        description: nil,
        address: "Address",
        venue: "Venue",
        private: false,
        capacity: 2,
        price: 3,
        user: nil,
        status: 4,
        category: nil,
        sub_category: "Sub Category"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Venue".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: 4.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: "Sub Category".to_s, count: 2
  end
end
