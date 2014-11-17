require 'rails_helper'

RSpec.describe "infrareds/show", :type => :view do
  before(:each) do
    @infrared = assign(:infrared, Infrared.create!(
      :device_id => 1,
      :name => "Name",
      :schedule => "Schedule",
      :json => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Schedule/)
    expect(rendered).to match(/MyText/)
  end
end
