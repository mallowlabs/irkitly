require 'rails_helper'

RSpec.describe "infrareds/index", :type => :view do
  before(:each) do
    assign(:infrareds, [
      Infrared.create!(
        :device_id => 1,
        :name => "Name",
        :schedule => "Schedule",
        :json => "MyText"
      ),
      Infrared.create!(
        :device_id => 1,
        :name => "Name",
        :schedule => "Schedule",
        :json => "MyText"
      )
    ])
  end

  it "renders a list of infrareds" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Schedule".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
