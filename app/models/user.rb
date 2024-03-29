class User < ApplicationRecord
  has_many :pesonal_obras
  has_many :bodeguero_obras , -> { includes :bodega_obra }
  has_many :bodega_obras, through: :bodeguero_obras
  has_many :encargado_compras
  has_many :bodeguero_centrals , -> { includes :bodega_central }
  has_many :bodega_central, through: :bodeguero_centrals
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
end
