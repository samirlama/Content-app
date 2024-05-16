class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :firstName, :lastName, :password_digest, presence: true

  has_many :contents
end
