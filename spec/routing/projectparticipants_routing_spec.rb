require "spec_helper"

describe ProjectparticipantsController do
  describe "routing" do

    it "routes to #index" do
      get("/projectparticipants").should route_to("projectparticipants#index")
    end

    it "routes to #new" do
      get("/projectparticipants/new").should route_to("projectparticipants#new")
    end

    it "routes to #show" do
      get("/projectparticipants/1").should route_to("projectparticipants#show", :id => "1")
    end

    it "routes to #edit" do
      get("/projectparticipants/1/edit").should route_to("projectparticipants#edit", :id => "1")
    end

    it "routes to #create" do
      post("/projectparticipants").should route_to("projectparticipants#create")
    end

    it "routes to #update" do
      put("/projectparticipants/1").should route_to("projectparticipants#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/projectparticipants/1").should route_to("projectparticipants#destroy", :id => "1")
    end

  end
end
