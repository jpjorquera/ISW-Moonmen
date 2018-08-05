class PersonalObra < ApplicationRecord
  belongs_to :user, inverse_of: :personal_obras
  validates_presence_of :user
  belongs_to :bodeguero_obra
end
