class SessionsController < ApplicationController
  layout "login"
  # display login screen
  def new
  end

  # log user out
  def destroy
    reset_session
    redirect_to login_path, success: "Logout successful!"
  end

  # handle oauth response
  def omniauth
    user = User.from_omniauth(request.env["omniauth.auth"])
    if user.valid?
      session[:user_id] = user.id
      redirect_to photos_path, success: "Welcome, #{user.full_name}!"
    else
      redirect_to login_path, warning: "Login failed"
    end
  end
end
