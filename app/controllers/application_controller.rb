class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  before_filter :authentikate_user

  layout 'application'

  include SessionsHelper

  private

  def authentikate_user
    if current_session
      if Time.now - current_session[:updated_at] > 1.day || !current_user
        current_session.destroy
        bad_request ['Session invalid or expired.'], 401
      end
      current_session[:updated_at] = Time.now
    else
      bad_request ['Session invalid or expired.'], 401
    end
  end

  def bad_request(errors, status = 200)
    render(:json => {:errors => errors,  :success => false, :status => status}, :status => status) and return
  end

  rescue_from CanCan::AccessDenied do |exception|
    bad_request [exception.message], 401
  end

end
