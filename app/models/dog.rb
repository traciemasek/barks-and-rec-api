class Dog < ApplicationRecord
  has_many :favorites
  has_many :adopters, through: :favorites
end
