require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Venue/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(//)
    expect(rendered).to match(/4/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Sub Category/)
  end
end
