class UsersController < ApplicationController
  # skip_before_action :require_login, only: [:new, :create]

  def create # New USER created/Register
    if new_user.valid?
      session[:user_id] = new_user.id
      return redirect_to 'users/show'    # '/secrets'
    end
    redirect_to :back, alert: new_user.errors.full_messages
  end

  def show
  end

  def update
  end

  private
    helper_method def user
      @user ||= User.find_by(id: params[:id])
    end

    helper_method def new_user
      @new_user ||= User.create(user_params)
    end

    def user_params
      params.require(:user).permit(:first_name,:last_name,:city,:state,:email,:password, :password_confirmation)
    end
end
