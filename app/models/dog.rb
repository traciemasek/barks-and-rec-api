class Dog < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :adopters, through: :favorites
  has_many_attached :images
end
