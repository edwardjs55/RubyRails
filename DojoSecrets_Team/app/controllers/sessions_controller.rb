class SessionsController < ApplicationController
  def index
  end

  def register
    user =User.create(name:params[:name], email:params[:email], password:params[:password])
    if (user.valid? == false)
      flash.alert = user.errors.full_messages
    redirect_to "/index" #add flash message to display successfulregistration
    else
      redirect_to "/index"
      flash.alert = "Success"
    end
  end

  def login
    users = User.find_by(email:params[:email])
    if users && users.authenticate(params[:password])
      session[:id] = users.id
      render "new"
    else redirect_to '/index'
    end
  end
  def new
    #render login page
  end


  def create
    # logic of Login
    user =User.create(name:params[:name], email:params[:email], password:params[:password])
    if (user.valid? == false)
    redirect_to "/index" , alert:user.errors.full_messages
    redirect_to "/current_user" if user.valid? == true
    end
  end

  def destroy

  end


private
  def user_params
    params.require(:user).permit(:name,:email,:password)
  end
end
