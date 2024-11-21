class User < ApplicationRecord
  def self.from_omniauth(response)
    User.find_or_create_by!(uid: response[:uid]) do |user|
      user.email = response.dig(:info, :email)
      user.first_name = response.dig(:info, :first_name)
      user.last_name = response.dig(:info, :last_name)
      user.image = response.dig(:info, :image)
      user.refresh_token = response.dig(:credentials, :refresh_token)
    end
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end