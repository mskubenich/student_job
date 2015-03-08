class SessionsController < ApplicationController
  skip_before_filter :authentikate_user, only: [:create]


  def create
    user = User.find_by_email params[:session][:email]
    if user && user.authenticate(params[:session][:password])
      sign_in user
      render json: { user_email: user.email, session_token: current_session.token }, status: :ok
    else
      render json: { error: ['Invalid email/password combination'] }, status: :unprocessable_entity
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end