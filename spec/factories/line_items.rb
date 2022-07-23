FactoryBot.define do
  factory :line_item do
    quantity { 1 }
    product { nil }
    order { nil }
  end
end
