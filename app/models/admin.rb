class Admin < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :username, :password, presence: true
end
