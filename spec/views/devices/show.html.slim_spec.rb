require 'rails_helper'

RSpec.describe "devices/show", :type => :view do
  before(:each) do
    @device = assign(:device, Device.create!(
      :user_id => 1,
      :name => "Name",
      :deviceid => "Deviceid",
      :clientkey => "Clientkey"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Deviceid/)
    expect(rendered).to match(/Clientkey/)
  end
end
