class TestController < ApplicationController    
    
    def index
    end

    def hello
        
    end 

    def say_hello
        render :text => "Saying Hello !!!"
    end    
    
    def hello_joe
        render :text => "Saying Hello Joe !!!"
    end 
    
    def hello_william
        redirect_to "hello_joe" 
    end

    def times
        # time = session[":times"] 
        if session[':times']
            session[':times'] +=1
        else
            session[':times'] = 1
        end

        @time = 1
         render :text => "You visited this URL #{session[':times'].to_s} times."
    end

    def restart
        session.delete(':times')        
        render :text => "Detroying the Session!!!"
    end     

end
