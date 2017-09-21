class User < ApplicationRecord
  has_secure_password
  has_many :posts

  VALID_INPUTS = /[[:ascii:]]+/

  #attr_accessor :email, :password, :password_confirmation
  validates :name, presence: true, length: { maximum: 50 },
        format: { with: VALID_INPUTS }
  validates_uniqueness_of :email, presence: true, format: { with: VALID_INPUTS }
  validates :password, presence: true, length: { minimum: 8 },
        format: { with: VALID_INPUTS }
    validates :password_confirmation, presence: true
end
