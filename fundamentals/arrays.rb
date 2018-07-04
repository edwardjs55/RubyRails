a = %w{eddie Dog Joe Willie Ball flux viceroy}
puts a
print a
puts
puts a.at 4
print'at: w \n',a.at(2),"\n"

print 'fetch: ' , a.fetch(1)
puts
puts 'length:', a.length
puts 'delete flux:', a.delete('flux')
print'reverse', a.reverse,"\n"

print 'sort', a.sort,"\n"

print 'slice: 3 ', a.slice(3),"\n"

print 'shuffle: ', a.shuffle, "\n"

print 'join: ', a.join("-"),"\n"

print 'insert: ',a.insert(5,"Jonsie"), "\n"

print 'Values_at', a.values_at(4,6),"\n"

print 'Values_at', a.values_at(1..4),"\n"




