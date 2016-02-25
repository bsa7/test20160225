require 'spec_helper'

describe 'home/index.haml' do

  it "user can access home/index form" do
    login_user
    render
    expect(response).to render_template(:index)
  end

  it "unauthorized user can access home/index form" do
    render
    expect(response).to render_template(:index)
  end

end
