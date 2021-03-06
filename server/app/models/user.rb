class User < ActiveRecord::Base
  before_save { email.downcase! }

  validates :name, presence: true, length: {maximum: 50},
            uniqueness: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
            format: {with: VALID_EMAIL_REGEX},
            uniqueness: {case_sensitive: false}

  validates :password, length: {minimum: 8} # min length is 8

  has_secure_password

end