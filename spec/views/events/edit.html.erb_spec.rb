require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      title: "MyString",
      description: nil,
      address: "MyString",
      venue: "MyString",
      private: false,
      capacity: 1,
      price: 1,
      host: nil,
      status: nil,
      category: nil,
      sub_category: "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[title]"

      assert_select "input[name=?]", "event[description]"

      assert_select "input[name=?]", "event[address]"

      assert_select "input[name=?]", "event[venue]"

      assert_select "input[name=?]", "event[private]"

      assert_select "input[name=?]", "event[capacity]"

      assert_select "input[name=?]", "event[price]"

      assert_select "input[name=?]", "event[host_id]"

      assert_select "input[name=?]", "event[status_id]"

      assert_select "input[name=?]", "event[category_id]"

      assert_select "input[name=?]", "event[sub_category]"
    end
  end
end
