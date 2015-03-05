module SessionsHelper
  def sign_in(user)
    @current_session = user.sessions.create
    @current_session.save

    cookies.permanent[:session_token] = @current_session.token
    current_user = user
  end

  def signed_in?
    !current_user.nil?
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user
    puts '+++++++++++='
    puts current_session.inspect
    puts '+++++++++++='
    @current_user ||= current_session.user if current_session
  end

  def current_session
    @current_session ||= Session.find_by_token cookies[:session_token]
  end

  def sign_out
    current_session.destroy
    cookies.delete(:session_token)
    @current_user = nil
  end

  def sign_up(user)
    @current_session = user.sessions.create
    @current_session.save

    cookies.permanent[:session_token] = @current_session.token
    current_user = user
  end


end