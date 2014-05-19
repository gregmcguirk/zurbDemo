require "spec_helper"

describe GodzillasController do
  describe "routing" do

    it "routes to #index" do
      get("/godzillas").should route_to("godzillas#index")
    end

    it "routes to #new" do
      get("/godzillas/new").should route_to("godzillas#new")
    end

    it "routes to #show" do
      get("/godzillas/1").should route_to("godzillas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/godzillas/1/edit").should route_to("godzillas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/godzillas").should route_to("godzillas#create")
    end

    it "routes to #update" do
      put("/godzillas/1").should route_to("godzillas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/godzillas/1").should route_to("godzillas#destroy", :id => "1")
    end

  end
end
