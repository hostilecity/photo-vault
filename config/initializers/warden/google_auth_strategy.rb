module Warden
  class GoogleAuthStrategy < Strategies::Base
    def valid?
      user_id.present?
    end
    def authenticate!
      success! User.find(user_id)
    rescue ActiveRecord::RecordNotFound
      fail! 'Login failed!'
    end

    private

    def user_id
      session[:user_id]
    end
  end
end
