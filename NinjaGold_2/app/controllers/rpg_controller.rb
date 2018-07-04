class RpgController < ApplicationController

  def initialize    
    #session[':gold'] = 0
    # session[':log'] = []
    @gold = 0
  end
  
  def index
    # if session[':gold']
    #   session[':gold'] += 5
    # else
    #   session[':gold'] = 0
    # end  
    if !session[':gold']
      session[':gold'] = 0
    end
    if !session[':log'] 
      session[':log']= []
    end  
    #@gold = 500
    #flash.notice = "Hello Eddie"

  end

  def farm
    gold= (10+rand(11))
    flash.notice = "Farm Gold earned: #{gold}"
    session[':gold'] += gold
    session[':log'].push(["Farm Gold: #{gold}","green"])
    # puts '\n Session: ',session[':log']
    redirect_to '/rpg'
  end
  
  def cave
    gold= (5+rand(5))
    flash.notice = "Cave Gold Found: #{gold}"
    session[':gold'] += gold
    session[':log'].push(["Cave Gold: #{gold}","green"])
    redirect_to '/rpg'
  end
  
  def casino
    gold= (rand(101)-50)
    flash.notice = "Casino Gold Won: #{gold}"
    session[':gold'] += gold
    if gold < 0
      session[':log'].push(["Casino Gold Lost: #{gold}","red"])
    else
      session[':log'].push(["Casino Gold Winnings: #{gold}","green"])
    end
    redirect_to '/rpg'
  end
  
  def house
    gold= (2+rand(4))
    flash.notice = "House Gold Earned: #{gold}"
    session[':gold'] += gold
    session[':log'].push(["House Gold: #{gold}","green"])
    redirect_to '/rpg'
  end

  def reset
    session.delete(':gold')
    session.delete(':log')
    redirect_to '/rpg'
  end

end
