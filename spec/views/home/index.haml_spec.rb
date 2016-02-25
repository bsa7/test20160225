require 'spec_helper'
#require 'helpers/users_helper_spec'

describe 'home/index.haml' do

  context WHEN_AUTHORIZED do
    it "user can access home/index form" do
      login_user
      render
      expect(response).to render_template(:index)
    end
  end

  context WHEN_NOT_AUTHORIZED do
    it "unauthorized user can access home/index form" do
      render
      expect(response).to render_template(:index)
    end
  end
end
