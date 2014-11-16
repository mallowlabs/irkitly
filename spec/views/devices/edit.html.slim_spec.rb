require 'rails_helper'

RSpec.describe "devices/edit", :type => :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :user_id => 1,
      :name => "MyString",
      :deviceid => "MyString",
      :clientkey => "MyString"
    ))
  end

  it "renders the edit device form" do
    render

    assert_select "form[action=?][method=?]", device_path(@device), "post" do

      assert_select "input#device_user_id[name=?]", "device[user_id]"

      assert_select "input#device_name[name=?]", "device[name]"

      assert_select "input#device_deviceid[name=?]", "device[deviceid]"

      assert_select "input#device_clientkey[name=?]", "device[clientkey]"
    end
  end
end
