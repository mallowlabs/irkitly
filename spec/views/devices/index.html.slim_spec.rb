require 'rails_helper'

RSpec.describe "devices/index", :type => :view do
  before(:each) do
    assign(:devices, [
      Device.create!(
        :user_id => 1,
        :name => "Name",
        :deviceid => "Deviceid",
        :clientkey => "Clientkey"
      ),
      Device.create!(
        :user_id => 1,
        :name => "Name",
        :deviceid => "Deviceid",
        :clientkey => "Clientkey"
      )
    ])
  end

  it "renders a list of devices" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Deviceid".to_s, :count => 2
    assert_select "tr>td", :text => "Clientkey".to_s, :count => 2
  end
end
