class Adopter < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true

  has_many :favorites
  has_many :dogs, through: :favorites
end
