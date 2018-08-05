class User < ApplicationRecord
  has_many :personal_obras, inverse_of: :user
  has_many :bodeguero_obras, inverse_of: :user
  has_many :encargado_compras, inverse_of: :user
  has_many :bodeguero_centrals, inverse_of: :user

  #after_create  :create_bodeguero_central
  #, inverse_of: :user
  ############

  ############
  accepts_nested_attributes_for :bodeguero_centrals, allow_destroy: true
  accepts_nested_attributes_for :bodeguero_obras, allow_destroy: true
  accepts_nested_attributes_for :personal_obras, allow_destroy: true
  accepts_nested_attributes_for :encargado_compras, allow_destroy: true
  #has_many :bodeguero_centrals
  before_save { self.email = email.downcase }
  validates :name,    presence: true, length: { maximum: 50 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email,   presence: true, length: { maximum: 255 },
  format: { with: VALID_EMAIL_REGEX  },
  uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }

  # Returns the hash digest of the given string.
  def User.digest(string)
    cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                  BCrypt::Engine.cost
    BCrypt::Password.create(string, cost: cost)
  end

  private

  #def create_bodeguero_central
  #    BodegueroCentral.create(user_id: self.id)
  #end
end
