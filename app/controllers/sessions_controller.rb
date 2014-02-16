class SessionsController < ApplicationController

  # def new
  # end

  def create
    session[:password] = params[:password]
    flash[:notice] = 'Yea gurl!'
    redirect_to '/'
  end

  def destroy
    reset_session
    flash[:notice] = 'You out!'
    redirect_to login_path
  end

end
