class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.paginate(:page => params[:page], per_page: 10).order('created_at DESC')
  end

  def new
  end

  def edit
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        # format.html { redirect_to @user, notice: 'Proposal was successfully created.' }
        format.json { render :show, status: :created, location: @user }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end

  end

  def update
    if @user.update_attributes user_params
      flash[:success] = "User profile updated."
      redirect_to @user
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
  def user_params
    puts "!!!!!!!!!!!!!!!!!"
    puts params.inspect
    puts "!!!!!!!!!!!!!!!!!"
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
end