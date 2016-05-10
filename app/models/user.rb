class User < ActiveRecord::Base
  has_secure_password
  has_many :posts

  validates :email, uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/, message: "Oops, your email format is invalid." }
  validates :password, length: { in: 6..20 }, on: :create
end
