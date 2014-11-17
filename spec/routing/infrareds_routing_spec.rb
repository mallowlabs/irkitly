require "rails_helper"

RSpec.describe InfraredsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/infrareds").to route_to("infrareds#index")
    end

    it "routes to #new" do
      expect(:get => "/infrareds/new").to route_to("infrareds#new")
    end

    it "routes to #show" do
      expect(:get => "/infrareds/1").to route_to("infrareds#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/infrareds/1/edit").to route_to("infrareds#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/infrareds").to route_to("infrareds#create")
    end

    it "routes to #update" do
      expect(:put => "/infrareds/1").to route_to("infrareds#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/infrareds/1").to route_to("infrareds#destroy", :id => "1")
    end

  end
end
