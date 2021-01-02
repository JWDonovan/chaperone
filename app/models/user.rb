class User < ActiveRecord::Base
  has_secure_password

  validates :email, :password_digest, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
end