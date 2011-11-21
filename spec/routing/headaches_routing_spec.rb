require "spec_helper"

describe HeadachesController do
  describe "routing" do

    it "routes to #index" do
      get("/headaches").should route_to("headaches#index")
    end

    it "routes to #new" do
      get("/headaches/new").should route_to("headaches#new")
    end

    it "routes to #show" do
      get("/headaches/1").should route_to("headaches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/headaches/1/edit").should route_to("headaches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/headaches").should route_to("headaches#create")
    end

    it "routes to #update" do
      put("/headaches/1").should route_to("headaches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/headaches/1").should route_to("headaches#destroy", :id => "1")
    end

  end
end
