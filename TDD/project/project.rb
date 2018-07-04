# file renamed from Class_project to project to adhere to RSPEC demo
class Project  
    attr_accessor :name, :description, :owner
    def initialize(name,description, owner)
        @name = name
        @description = description
        @owner = owner
        @tasks = []
    end

    def elevator_pitch
        "#{@name}, #{@description}"
    end

    def tasks
        @tasks
    end

    def add_tasks(task)
        @tasks.push(task)

    end    
end    

project1 = Project.new("Project1","Description 1","Fred")
puts project1.name
puts project1.elevator_pitch
project1.add_tasks("eat Dinner")
puts project1.tasks




