class User < ActiveRecord::Base
  has_secure_password
  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
#  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :name, :email, presence: {message: "Name and Email fields cannot be blank"}
  validates :email, uniqueness: true, format:{with: /\A[a-z0-9]+\z/}
#test to see if email can be created using uppercase letters.  It shouldn't be allowed!!
end
