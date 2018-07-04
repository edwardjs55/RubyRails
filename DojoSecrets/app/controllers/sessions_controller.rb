class SessionsController < ApplicationController
  skip_before_action :require_login, except: [:destroy]

  def create
    @user = User.find_by(email: params[:email])
    errors = []
    if @user
      if @user.authenticate(params[:password])
        session[:user_id] = @user.id
        return redirect_to '/secrets'
      else
        errors << 'Invalid password' # errors << is the same as errors.push
      end

    else
      errors << 'No account with that email exists. Please register first.'
    end
    redirect_to :back, alert: errors
  end

  def destroy
    session.delete :user_id if session.key? 'user_id'
    redirect_to '/users'
  end

  def new
    users = User.find_by(email: params[:email])
    
    if users && users.authenticate(params[:password])
      session[:id] = users.id
      render "/users"
      else 
          flash[:alert] = users.errors.full_messages
          puts flash[:alert]
          redirect_to "/users" #add flash message to display successfulregistration          
    end
  end



end
