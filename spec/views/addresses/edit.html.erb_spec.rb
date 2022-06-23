require 'rails_helper'

RSpec.describe "addresses/edit", type: :view do
  before(:each) do
    @address = assign(:address, Address.create!(
      line_1: "MyString",
      line_2: "MyString",
      suburb: "MyString",
      state: "MyString",
      postcode: "MyString"
    ))
  end

  it "renders the edit address form" do
    render

    assert_select "form[action=?][method=?]", address_path(@address), "post" do

      assert_select "input[name=?]", "address[line_1]"

      assert_select "input[name=?]", "address[line_2]"

      assert_select "input[name=?]", "address[suburb]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[postcode]"
    end
  end
end
