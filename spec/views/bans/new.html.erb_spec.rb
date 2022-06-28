require 'rails_helper'

RSpec.describe "bans/new", type: :view do
  before(:each) do
    assign(:ban, Ban.new(
      ip: "MyString",
      country: "MyString",
      port: 1,
      jail: "MyString",
      username: "MyString",
      uri: "MyString",
      method: "MyString",
      user_agent: "MyText"
    ))
  end

  it "renders new ban form" do
    render

    assert_select "form[action=?][method=?]", bans_path, "post" do

      assert_select "input[name=?]", "ban[ip]"

      assert_select "input[name=?]", "ban[country]"

      assert_select "input[name=?]", "ban[port]"

      assert_select "input[name=?]", "ban[jail]"

      assert_select "input[name=?]", "ban[username]"

      assert_select "input[name=?]", "ban[uri]"

      assert_select "input[name=?]", "ban[method]"

      assert_select "textarea[name=?]", "ban[user_agent]"
    end
  end
end
