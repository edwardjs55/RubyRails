class Ninja < ActiveRecord::Base
  belongs_to :dojo
  validates :first_name, :last_name, presence: {message: "First name nor Last name can be Blank"}  # true
end
