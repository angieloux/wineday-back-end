FactoryBot.define do
  factory :product do
    title { "2020 Black Hawk" }
    price { "29.99" }
    points { 80 }
    description { "A light and fruity red" }
    variety { "Cabernet Sauvingnon" }
    province { "Napa" }
    country { "United States of America" }
    winery { "ABC Winery" }
  end
end
