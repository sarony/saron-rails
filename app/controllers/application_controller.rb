class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  protected

  def authorize
    unless admin?
      flash[:notice] = "Unauthorized access"
      redirect_to home_path
      false
    end
  end

  def admin?
    session[:password] = SARON
  end

end
