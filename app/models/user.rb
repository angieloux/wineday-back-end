class User < ApplicationRecord
  has_many :orders
  has_secure_password
  validates :email, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  validates_format_of :username, with: /^[^@]+$/, multiline: true, message: "cannot contain @ symbol"
  validates :password, presence: true, confirmation: true
  validates :password_confirmation, presence: true

  scope :login, ->(input) { User.where(username: input).or(User.where(email: input)) }
end
