z = (1..15)
(1..15).each {|i| print i,' '}
# odd mumbers
puts
# (1..15).select {|i| print i.odd, ' '}

# (1..15).step(2) {|i| print i,' '}
(1..15).select {|i|  print i,' ' if (i%2 === 1)} 



#sums too
puts
sum = 0
#(1..15).each {|i,sum| ;sum = sum.+(i) ;print 'New #:',i,'  Sum:', sum ;puts}
(1..15).select do  # each
    |i| # |i,sum|
    sum = sum + i
    print 'New # :',i,'  Sum: ',sum
    puts
end