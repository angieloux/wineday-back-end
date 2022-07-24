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
end
