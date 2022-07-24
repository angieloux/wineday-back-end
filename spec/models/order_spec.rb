require 'rails_helper'

RSpec.describe Order, type: :model do
  context "factory" do
    before(:all) do 
      @order = build(:order)
    end

    # if update model without updating factory, you'll know about it because of this test
    it "has a valid factory" do
      expect(@order).to be_valid
    end

    it "has the right price" do
      expect(@order.total).to eq(9.99)
    end
  end

end
