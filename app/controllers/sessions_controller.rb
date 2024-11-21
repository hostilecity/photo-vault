class SessionsController < ApplicationController

  # display login screen
  def new
  end

  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id
      flash.notice = 'Login successful'
      redirect_to photos_path
    else
      flash.alert = 'Login failed'
      redirect_to new_sessions_path
    end
  end
end



