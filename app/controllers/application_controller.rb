class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  def authenticate_user
    if @current_user == nil
      flash[:notice] = t('notice.login_needed')
      redirect_to new_session_path
    end
  end
end
