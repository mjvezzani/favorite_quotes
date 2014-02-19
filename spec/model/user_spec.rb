require 'spec_helper'

describe User do

  it "is invalid without a user name" do
    expect(User.create(name: "", password: "foobar", password_confirmation: "foobar")).to be_invalid
  end
  it "is invalid without a password" do
    expect(User.create(name: "Mike Vezzani", password: "", password_confirmation: "foobar")).to be_invalid
  end
  it "is invalid without a password_confirmation" do
    expect(User.create(name: "Mike Vezzani", password: "foobar", password_confirmation: "")).to be_invalid
  end
  it "is valid with all attributes present" do
    expect(User.create(name: "Mike Vezzani", password: "foobar", password_confirmation: "foobar")).to be_valid
  end

  describe "new user has a unique username" do
    before do
      user1 = User.create(name: "Mike Vezzani", password: "foobar", password_confirmation: "foobar")
    end
    it "is invalid with the same username" do
      expect(User.create(name: "Mike Vezzani", password: "jonezez", password_confirmation: "jonezez")).to be_invalid
    end
  end

end
