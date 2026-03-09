class User < ApplicationRecord
  has_secure_password
  validates_uniqueness_of :username, :email
  validates_presence_of :username, :email, :name
end
