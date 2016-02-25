require 'rails_helper'

RSpec.describe HomeController, :type => :controller do
  include Devise::TestHelpers

  describe "get root url" do
    it "renders the :index template" do
      expect(get: root_url(subdomain: nil)).to route_to(
        controller: "home",
        action: "index")
    end
  end

  context "when not signed in" do
    describe "GET 'index'" do
      it "redirects to sign in" do
        get 'index'
        expect(response).to be_redirect
      end
    end
  end

  context "when signed in" do
    describe "GET 'index'" do
      it "signed users access to index" do
        login_user
        get 'index'
        expect(response).to be_success
      end
    end
  end
end
