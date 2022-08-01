require "rails_helper"

RSpec.describe Order, type: :model do
  context "factory" do
    before(:all) do
      ## Need to build a user factory because of the belongs_to association
      @user = build(:user)
      @order = build(:order, user: @user)
    end

    # if update model without updating factory, you'll know about it because of this test
    it "has a valid factory" do
      @user = build(:user)
      expect(@order).to be_valid
    end

    it "has the right price" do
      expect(@order.total).to eq(9.99)
    end
  end

  # it "should belong to a user" do
  #   t = Order.reflect_on_association(:user)
  #   expect(t.macro).to eq(:belongs_to)
  # end

  context "associations" do
    it { should belong_to(:user) }
  end
end
