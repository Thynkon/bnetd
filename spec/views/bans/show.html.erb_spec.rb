require 'rails_helper'

RSpec.describe "bans/show", type: :view do
  before(:each) do
    @ban = assign(:ban, Ban.create!(
      ip: "Ip",
      country: "Country",
      port: 2,
      jail: "Jail",
      username: "Username",
      uri: "Uri",
      method: "Method",
      user_agent: "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Ip/)
    expect(rendered).to match(/Country/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Jail/)
    expect(rendered).to match(/Username/)
    expect(rendered).to match(/Uri/)
    expect(rendered).to match(/Method/)
    expect(rendered).to match(/MyText/)
  end
end
