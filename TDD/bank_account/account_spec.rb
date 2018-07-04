require_relative 'bank_account'
RSpec.describe BankAccount do
  before(:each) do
    # updated this block to create two projects
    @myAccount1 = BankAccount.new
    @myAccount2 = BankAccount.new    
end

it 'Has a getter method for the checking account balance' do
    expect(@myAccount1.chk_balance).to be > 0
    expect(@myAccount2.chk_balance).to be > 0
end

it 'Has a getter method for the account Totals' do
    @myAccount1.showTotal
    @myAccount2.showTotal    
    expect(@myAccount1.total).to be > 0
    expect(@myAccount2.total).to be > 0
end

it 'test if a withdraw method exists' do
    expect(@myAccount1).to respond_to(:withdraw)
    expect(@myAccount2).to respond_to(:checking)
end 

it 'test for error message if withdraw is rejected' do
    expect(@myAccount1.withdraw(600,'c')).to eq("Insufficient Funds")
    expect(@myAccount2.withdraw(800,'c')).to eq("Insufficient Funds")
end 

it "test for Error if User tries to use Private method: bankAccounts" do
    #expect(@myAccount1.showAccounts).to eq("undefined method 'showAccounts'*")
    #expect(@myAccount1.showAccounts).to include("undefined method 'showAccounts'")
    #expect(@myAccount1.showAccounts).to include("undefined method")
    #expect(@myAccount1.showAccounts).to include("NoMethodError")
    expect{@myAccount1.showAccounts}.to raise_error(NoMethodError)
    expect{@myAccount2.showAccounts}.to raise_error(NoMethodError)
end 

it "test for User trying to set the Interest Rate " do
    expect{@myAccount2.interest_rate = 0.02}.to raise_error(NoMethodError)

end

end

# it 'has a method elevator_pitch to explain name and description' do
#     expect(@project1.elevator_pitch).to eq("Project 1, description 1")
#     expect(@project2.elevator_pitch).to eq("Project 2, description 2")
# end

# it 'Has an Owner setter method' do
#     expect(@project1.owner="Frank").to eq('Frank')
#     expect(@project1.owner="Wilma").to eq('Wilma')
# end  

# it 'Has an Owner getter method' do    
#     expect(@project1.owner).to eq("Fred")
#     expect(@project2.owner).to eq("Betty")
# end  

# it 'verify tasks attrribute & add_tasks method' do
#      @project1.add_tasks("Feed the dog")
#      @project2.add_tasks("Wash the Cat")
#      expect(@project1.tasks).to eq(["Feed the dog"])
#      expect(@project2.tasks).to eq(["Wash the Cat"])
# end

#end







