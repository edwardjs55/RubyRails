class DojosController < ApplicationController
    def index
        @dojos = Dojo.all
    end

    def new
    end

    def create
        # puts Dojo.valid?
        # if Dojo.vaid?
        #     flash.notice = "New Dojo Created Successfully"
        # else
        #     flash.notice = "Invalid Dojo Data submitted"
        # end
        
        flash.notice = "New Dojo Created Successfully"
        Dojo.create(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
        redirect_to '/dojos'
    end
    
    def show
        @dojo=Dojo.find(params[:id])
    end
    
    def edit
        @dojo=Dojo.find(params[:id])
    end
    
    def update
        dojo=Dojo.find(params[:id])
        dojo.update(branch: params[:branch], street: params[:street], city: params[:city], state: params[:state])
        flash.notice = "Dojo Record Updated Successfully"
        redirect_to '/dojos'
    end
    
    def destroy
        dojo=Dojo.find(params[:id])
        dojo.destroy
        flash.notice = "Dojo Record Deleted"
        redirect_to '/dojos'
    end

end
