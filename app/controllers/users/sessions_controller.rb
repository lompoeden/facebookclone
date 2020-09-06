# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  def new
  end
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      session[:user_id] = user.id
      redirect_to user_path(user.id)
    else
      flash[:danger] = 'Login failed'
      render :new
    end
  end
end
def destroy
  Logout process
  end
  def destroy
      session.delete(:user_id)
    end
  end
  def destroy
    session.delete(:user_id)
    flash[:notice] = 'Logout failed'
    redirect_to new_session_path
  end
end
