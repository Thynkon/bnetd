require 'rails_helper'

RSpec.describe "bans/edit", type: :view do
  before(:each) do
    @ban = assign(:ban, Ban.create!(
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

  it "renders the edit ban form" do
    render

    assert_select "form[action=?][method=?]", ban_path(@ban), "post" do

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
