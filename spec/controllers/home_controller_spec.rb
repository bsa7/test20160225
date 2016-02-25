require 'rails_helper'
require 'helpers/users_helper_spec'

RSpec.describe HomeController, :type => :controller do
  include Devise::TestHelpers

  describe "get root url" do
    it "renders the :index template" do
      expect(get: root_url(subdomain: nil)).to route_to(
        controller: "home",
        action: "index")
    end
  end

  context WHEN_NOT_AUTHORIZED do
    describe "GET 'index'" do
      it "redirects to sign in" do
        get 'index'
        expect(response).to be_redirect
      end
    end
  end

  context WHEN_AUTHORIZED do
    before(:each) do
      login_user
    end

    describe "GET 'index'" do
      it "signed users access to index" do
        get 'index'
        expect(response).to be_success
      end
    end
  end
end
