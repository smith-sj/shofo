require 'rails_helper'

RSpec.describe "addresses/new", type: :view do
  before(:each) do
    assign(:address, Address.new(
      line_1: "MyString",
      line_2: "MyString",
      suburb: "MyString",
      state: "MyString",
      postcode: "MyString"
    ))
  end

  it "renders new address form" do
    render

    assert_select "form[action=?][method=?]", addresses_path, "post" do

      assert_select "input[name=?]", "address[line_1]"

      assert_select "input[name=?]", "address[line_2]"

      assert_select "input[name=?]", "address[suburb]"

      assert_select "input[name=?]", "address[state]"

      assert_select "input[name=?]", "address[postcode]"
    end
  end
end
