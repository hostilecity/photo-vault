class PhotosController < ApplicationController
  before_action :authenticate!

  # home page
  def index
    flash.now.notice = "Welcome, #{current_user.full_name}!"
  end
end
