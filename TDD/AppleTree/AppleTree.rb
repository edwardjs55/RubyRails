class AppleTree
attr_accessor :age
attr_reader :height, :apple_count

def initialize
    @age=0
    @height = 1.0  # 0
    @apple_count = 0
end

def year_gone_by
    @age = @age+1
    @height *= 1.10
    
    if( 3 < @age and @age <11 )
        @apple_count +=2
    
    end
end

# def pick_apples
# end    


end

tree = AppleTree.new
12.times {tree.year_gone_by}

puts " height = #{tree.height}"
puts " Age = #{tree.age}"
puts " Apples = #{tree.apple_count}"


