require_relative 'AppleTree'
RSpec.describe AppleTree do
    before(:each) do
    # global variables   
    @apple = AppleTree.new      
    end

    it "has getter and setter for tree age" do
        @apple.age = 1
        expect(@apple.age).to eq(1)
    end

    it "has Only a getter method for tree height" do
        expect(@apple.height).to eq(1)
        expect{@apple.height=2}.to raise_error(NoMethodError)
    end

    it "has Only a getter method for tree apple_count" do
        expect(@apple.apple_count).to eq(0)
        expect{@apple.count=1}.to raise_error(NoMethodError)
    end

    it "has a year_gone_by method" do
        expect(@apple).to respond_to(:year_gone_by)
    end

    context ("age < 3") do
        it 'Apple count should be 0 for first 3 years' do
        2.times {@apple.year_gone_by}
        expect(@apple.apple_count).to eq(0)
        end
    end 
    
    context ("3< age< 7" ) do
        it 'Apple count should increase by 2 for 3 < Age > 11 ' do
            6.times {@apple.year_gone_by}
            expect(@apple.apple_count).to eq(6)
        end    
    end

    context ("age > 10") do
        it 'Apple count incrementation should cease after 10 years ' do
            12.times {@apple.year_gone_by}
            expect(@apple.apple_count).to eq(14)
        end   
    end

end

    
#     it "has a getter and setter for name attribute" do       
#     expect(@project.name).to eq("Name")
#   end
#   it "has a getter and setter for the description attribute" do
#     @project.description = "Description"
#     expect(@project.description).to eq("Description")
#   end
#   it 'has a method elevator_pitch to explain name and description' do
#     @project.description = "Description"
#     expect(@project.elevator_pitch).to eq("Name, Description")
#   end
# end