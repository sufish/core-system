module SessionManager
  def create_session(user)
    session[:user] = {
        :id => user.id,
        :username => user.name,
        :real_name => user.real_name,
        :role_name => user.role_name
    }
  end

  def destroy_session
    session.clear
  end

  def current_user
    @current_user ||= session[:user] && (Users::SystemUser.where(id: session[:user]['id'])).first!
  end

  def logged_in?
    !session[:user].nil?
  end
end