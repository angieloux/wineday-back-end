class User < ApplicationRecord
    has_many :orders
    has_secure_password
    validates :email, presence: true, uniqueness: true
    validates :username, presence: true, uniqueness: true
    validates :email, presence: true, confirmation: true
    validates :password_confirmation, presence: true
end