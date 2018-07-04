
def guess_number # guesscopy
    number = 25
 
    while true
    puts "Guess a number"
    num = gets.chomp.to_i
    guesscopy = num

    if guesscopy == number
        puts "You Won, Matching Numbers : #{guesscopy}"
        return 'CorrectO'
    #    break
    elsif guesscopy < number
        puts 'Too low, Try again'        
    elsif guesscopy > number
        puts 'Too high, Try Again'
    end
    # return 'Wrong'
    # your code here
end # while END
end 

guess_number

#  right = false
#  while !right
#      puts "Guess a number"
#      num = gets.chomp.to_i
#       if num == 25
#          puts " you WON"
#          right = true
#       else
#         puts num
#         puts 'right:', right
#      end
# end    

