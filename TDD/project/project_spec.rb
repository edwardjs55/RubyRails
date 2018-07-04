require_relative 'project'
RSpec.describe Project do
  before(:each) do
    # updated this block to create two projects
    @project1 = Project.new('Project 1', 'description 1','Fred')
    @project2 = Project.new('Project 2', 'description 2','Betty')    
end

it 'has a method elevator_pitch to explain name and description' do
    expect(@project1.elevator_pitch).to eq("Project 1, description 1")
    expect(@project2.elevator_pitch).to eq("Project 2, description 2")
end

it 'Has an Owner setter method' do
    expect(@project1.owner="Frank").to eq('Frank')
    expect(@project1.owner="Wilma").to eq('Wilma')
end  

it 'Has an Owner getter method' do    
    expect(@project1.owner).to eq("Fred")
    expect(@project2.owner).to eq("Betty")
end  

it 'verify tasks attrribute & add_tasks method' do
     @project1.add_tasks("Feed the dog")
     @project2.add_tasks("Wash the Cat")
     expect(@project1.tasks).to eq(["Feed the dog"])
     expect(@project2.tasks).to eq(["Wash the Cat"])
end

end







