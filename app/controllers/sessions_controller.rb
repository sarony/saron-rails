class SessionsController < ApplicationController
  skip_before_action :authorize

  def create
    session[:password] = params[:password]
    # TODO: figure out 'flash notice'
    flash[:notice] = 'Yea gurl!'
    redirect_to '/'
  end

  def destroy
    reset_session
    flash[:notice] = 'You out!'
    redirect_to '/'
  end

end
