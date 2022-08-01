require 'rails_helper'

RSpec.describe Product, type: :model do
  context "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:variety) }
    it { should validate_presence_of(:price) }
    it { should validate_presence_of(:points) }
    it { should validate_presence_of(:description) }
  end
end
