class User < ApplicationRecord
  before_save { self.email = email.downcase }
  validates :user_name, presence: true, length: { maximum: 50 },
                    uniqueness: { case_sensitive: false }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  #Optional Password Rules
  #validates :password, presence: true, length: { minimum: 6 }
end
