class Adopter < ApplicationRecord
  has_secure_password

  has_many :favorites
  has_many :dogs, through: :favorites
end
