require 'rails_helper'

RSpec.describe "bans/index", type: :view do
  before(:each) do
    assign(:bans, [
      Ban.create!(
        ip: "Ip",
        country: "Country",
        port: 2,
        jail: "Jail",
        username: "Username",
        uri: "Uri",
        method: "Method",
        user_agent: "MyText"
      ),
      Ban.create!(
        ip: "Ip",
        country: "Country",
        port: 2,
        jail: "Jail",
        username: "Username",
        uri: "Uri",
        method: "Method",
        user_agent: "MyText"
      )
    ])
  end

  it "renders a list of bans" do
    render
    assert_select "tr>td", text: "Ip".to_s, count: 2
    assert_select "tr>td", text: "Country".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Jail".to_s, count: 2
    assert_select "tr>td", text: "Username".to_s, count: 2
    assert_select "tr>td", text: "Uri".to_s, count: 2
    assert_select "tr>td", text: "Method".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
  end
end
