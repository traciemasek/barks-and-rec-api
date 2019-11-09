class Dog < ApplicationRecord
  has_many :favorites, dependent: :destroy
  has_many :adopters, through: :favorites
end
