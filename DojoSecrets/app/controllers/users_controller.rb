class UsersController < ApplicationController
  skip_before_action :require_login, only: [:new, :create]

  def new
    render 'index'
  end

  def create
    if new_user.valid?
      session[:user_id] = new_user.id
      return redirect_to '/secrets'
    end
    redirect_to :back, alert: new_user.errors.full_messages
  end

  # def login
  #   # logic of Login
  #   user =   User.create(name:params[:name], email:params[:email], password:params[:password])
  #   if (user.valid? == false)
  #   redirect_to "/users" , alert:user.errors.full_messages
  #   redirect_to "/current_user" if user.valid? == true
  #   end
  # end

  private
    helper_method def user
      @user ||= User.find_by(id: params[:id])
    end

    helper_method def new_user
      @new_user ||= User.create(user_params)
    end

    def user_params
      params.require(:user).permit(:name,:email,:password, :password_confirmation)
    end

end
