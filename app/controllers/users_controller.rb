class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authentikate_user, only: [:create]

  include SessionsHelper

  def create
    # TODO need to login after add new user and show message if wrong params.
    @user = User.new(user_params)
    if @user.save
        sign_in @user
        # render json: { user_email: user.email, session_token: current_session.token }, status: :ok
    else
      # render json: { error: ['Invalid email/password combination'] }, status: :unprocessable_entity
    end
    redirect_to root_path
  end

  def profile
    render json: current_user.to_json
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :date_of_birth, :country)
  end
end