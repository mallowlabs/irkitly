class TopController < ApplicationController
  skip_before_action :authenticate_user!
  def index
    if user_signed_in?
      redirect_to controller: :devices
      return
    end
  end
end
