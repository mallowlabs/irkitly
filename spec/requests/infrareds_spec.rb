require 'rails_helper'

RSpec.describe "Infrareds", :type => :request do
  describe "GET /infrareds" do
    it "works! (now write some real specs)" do
      get infrareds_path
      expect(response).to have_http_status(200)
    end
  end
end
