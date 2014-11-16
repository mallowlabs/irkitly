require 'rails_helper'

RSpec.describe "devices/new", :type => :view do
  before(:each) do
    assign(:device, Device.new(
      :user_id => 1,
      :name => "MyString",
      :deviceid => "MyString",
      :clientkey => "MyString"
    ))
  end

  it "renders new device form" do
    render

    assert_select "form[action=?][method=?]", devices_path, "post" do

      assert_select "input#device_user_id[name=?]", "device[user_id]"

      assert_select "input#device_name[name=?]", "device[name]"

      assert_select "input#device_deviceid[name=?]", "device[deviceid]"

      assert_select "input#device_clientkey[name=?]", "device[clientkey]"
    end
  end
end
