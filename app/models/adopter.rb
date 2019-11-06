class Adopter < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: true
  validates :username, :password, presence: true

  has_many :favorites, dependent: :destroy
  has_many :dogs, through: :favorites
  has_one :application, dependent: :destroy
  has_many :tasks, dependent: :destroy
end
