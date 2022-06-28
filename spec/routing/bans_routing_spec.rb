require "rails_helper"

RSpec.describe BansController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/bans").to route_to("bans#index")
    end

    it "routes to #new" do
      expect(get: "/bans/new").to route_to("bans#new")
    end

    it "routes to #show" do
      expect(get: "/bans/1").to route_to("bans#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/bans/1/edit").to route_to("bans#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/bans").to route_to("bans#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/bans/1").to route_to("bans#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/bans/1").to route_to("bans#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/bans/1").to route_to("bans#destroy", id: "1")
    end
  end
end
