class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authentikate_user, only: [:create]


  def create
    @user = User.new(user_params)

    if @user.save
      render json: @user.to_json, status: :created
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def profile
    render json: current_user.to_json
  end

  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :date_of_birth, :country, :region)
  end
end