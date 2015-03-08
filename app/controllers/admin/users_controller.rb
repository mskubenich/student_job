class Admin::UsersController < AdminController
  def index
    render json: User.all.to_json
  end
end