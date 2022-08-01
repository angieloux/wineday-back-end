FactoryBot.define do
  # Quick way to create dummy data for testing
  factory :line_item do
    quantity { 1 }
    product { nil }
    order { nil }
  end
end
