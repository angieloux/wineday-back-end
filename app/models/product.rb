class Product < ApplicationRecord
    has_many :line_items
    has_many :orders, through: :line_items
    validates :title, :description, :variety, :price, :points, presence: true
    validates :price, numericality: { greater_than_or_equal_to: 0, less_than: BigDecimal(10**3) }, format: { with: /\A\d{1,3}(\.\d{1,2})?\z/ }
    validates :points, numericality: { only_integer: true, greater_than: 0 }

    scope :high_scoring, ->{where("points > ?", 94)}
end
