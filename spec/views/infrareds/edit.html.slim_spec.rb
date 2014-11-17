require 'rails_helper'

RSpec.describe "infrareds/edit", :type => :view do
  before(:each) do
    @infrared = assign(:infrared, Infrared.create!(
      :device_id => 1,
      :name => "MyString",
      :schedule => "MyString",
      :json => "MyText"
    ))
  end

  it "renders the edit infrared form" do
    render

    assert_select "form[action=?][method=?]", infrared_path(@infrared), "post" do

      assert_select "input#infrared_device_id[name=?]", "infrared[device_id]"

      assert_select "input#infrared_name[name=?]", "infrared[name]"

      assert_select "input#infrared_schedule[name=?]", "infrared[schedule]"

      assert_select "textarea#infrared_json[name=?]", "infrared[json]"
    end
  end
end
