class Friendship < ActiveRecord::Base
  belongs_to :user , required: true, class_name: 'User' #,foreign_key: 'user_id'
  belongs_to :friend , required: true, class_name: 'User' #, foreign_key: 'friend_id'

  # Could change Name to Booga & Uoga if you Use correct foreign_key Names
end
