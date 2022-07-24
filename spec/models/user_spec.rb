require 'rails_helper'

RSpec.describe User, type: :model do
  context "factory" do
    before(:all) do 
      @user = build(:user)
    end

    # if update model without updating factory, you'll know about it because of this test
    it "has a valid factory" do
      expect(@user).to be_valid
    end

    it "has the right username" do
      expect(@user.username).to eq("mrtest")
    end
  end

  context "validations" do 
    before(:each) do
      @user = build(:user)
    end

    it "is invalid without username" do 
      @user.username = nil
      expect(@user).not_to be_valid
    end

    it "is invalid without an email" do 
      user = build(:user, email: nil)
      expect(user).not_to be_valid
    end

    it "is invalid without a password" do
      user = build(:user, password: nil)
      expect(user).not_to be_valid
      
    end

    it "is invalid without a password confirmation" do
      user = build(:user, password_confirmation: nil)
      expect(user).not_to be_valid
      
    end

    it "is invalid when password and confirmation don't match" do 
      user = build(:user, password_confirmation: "bar")
      expect(user).not_to be_valid
    end
  
  end
end
