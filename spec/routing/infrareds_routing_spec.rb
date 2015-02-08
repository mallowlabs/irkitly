require "rails_helper"

RSpec.describe InfraredsController, :type => :routing do
  describe "routing" do

    it "routes to #edit" do
      expect(:get => "/infrareds/1/edit").to route_to("infrareds#edit", :id => "1")
    end

    it "routes to #update" do
      expect(:put => "/infrareds/1").to route_to("infrareds#update", :id => "1")
    end

  end
end
