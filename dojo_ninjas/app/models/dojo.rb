class Dojo < ActiveRecord::Base
    has_many :ninjas , dependent: :destroy
    validates :name, :city, :state, presence: {message: "Name, city, State cannot be Blank"}  # true
    validates :state, length: {in: 2..2 , message: "State must be 2 chars long"}
end
