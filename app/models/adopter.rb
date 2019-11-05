class Adopter < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :username, :password, presence: true

  has_many :favorites
  has_many :dogs, through: :favorites
  has_one :application
  has_many :tasks
end
