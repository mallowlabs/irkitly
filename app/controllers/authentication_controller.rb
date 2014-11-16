class AuthenticationController < ApplicationController
  skip_before_filter :authenticate_user!

  def login
    redirect_to root_path
  end

  define_method ENV['OMNIAUTH_PROVIDER'] do
    oauth = request.env['omniauth.auth']
    user = User.where(nickname: oauth.info.nickname).first
    if user
      user.name = oauth.info.name
    else
      user = User.new(name: oauth.info.name, nickname: oauth.info.nickname)
    end
    user.save
    sign_in_and_redirect user,:event => :authentication
  end

  def logout
    sign_out current_user
    redirect_to root_path
  end

  def failure
    redirect_to root_path, alert: t(:error_authentication_failed)
  end
end
