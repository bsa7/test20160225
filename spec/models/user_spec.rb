include ControllerMacros
# require 'rails_helper'
require 'spec_helper'

describe User do
  it "has a valid factory" do
    expect(build(:user)).to be_valid
  end
  it "is invalid without an name" do
    expect(build(:user, name: nil)).not_to be_valid
  end
  it "is invalid with too short full_description" do
    expect(build(:user, full_description: 's')).not_to be_valid
  end
  it "is invalid without an email" do
    expect(build(:user, email: nil)).not_to be_valid
  end

  it "is invalid with wrong email" do
    expect(build(:user, email: Faker::Name.wrong_email)).not_to be_valid
  end

  it "is valid with valid email" do
    expect(build(:user, email: Faker::Internet.safe_email)).to be_valid
  end
end
