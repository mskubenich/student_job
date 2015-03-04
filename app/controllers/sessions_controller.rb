class SessionsController < ApplicationController

  include SessionsHelper

  def create
    user = User.find_by(email: params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to root_path
    else
      flash.now[:error] = 'Invalid email/password combination'
      redirect_to root_path
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end