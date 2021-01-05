# frozen_string_literal: true

class User < ActiveRecord::Base
  has_secure_password
  has_many :destinations

  validates :email, :password_digest, :first_name, :last_name, presence: true
  validates :email, uniqueness: true
end
