class AdminController < ApplicationController
  before_filter :authorize_admin

  private

  def authorize_admin
    unless current_user && current_user.admin?
      bad_request 'Admin only allowed to view this page !', 401
    end
  end
end