class SessionsController < ApplicationController
  def new

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else
      render 'new', notice: 'Combinación errónea de email/password. Intente de nuevo.'
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
  
  def menu

  end
  
  
end
