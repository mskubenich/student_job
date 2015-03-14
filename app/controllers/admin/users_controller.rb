class Admin::UsersController < AdminController
  load_and_authorize_resource

  def index
    render json: User.all.to_json
  end
end