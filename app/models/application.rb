class Application < ApplicationRecord
  belongs_to :adopter
  # validations on form fields
  # validates :first_name, :last_name, :why_adopt, presence: true
end
