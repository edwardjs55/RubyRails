class User < ActiveRecord::Base
    ## all the people I am Friends with
     has_many :my_friends, class_name:'Friendship', foreign_key: :user_id
     has_many :friends, through: :my_friends, source: :friend
    # can friends W any descriptive word/verb as long as source is correct
    
    ## all the people that are Friends with Me
    has_many :friends_wMe, class_name:'Friendship', foreign_key: :friend_id
    has_many :likes_me, through: :friends_wMe, source: :user
    # can likes_me W any descriptive word/verb as long as source is correct


end
