class Admin < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
end
