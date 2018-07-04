class User < ActiveRecord::Base
  has_secure_password
  has_many :comments, dependent: :destroy
  has_many :events, dependent: :destroy
  has_many :attendings, through: :events, source: :event

  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
  validates :first_name, :last_name, :email, :city, :state,  presence: true
  validates :email, uniqueness: true  # ,format
  before_save :downcase_fields
  #test to see if email can be created using uppercase letters.  It shouldn't be allowed!!
  def downcase_fields
    self.email.downcase!
  end
end

#   has_many :secrets
#   has_many :likes, dependent: :destroy
#   has_many :secrets_liked, through: :likes, source: :secret

#  EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]+)\z/i
