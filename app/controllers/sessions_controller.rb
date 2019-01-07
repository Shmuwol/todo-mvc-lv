class SessionsController < ApplicationController
  def new
  end

  def create
    if auth_hash = request.env['omniauth.auth']
      oauth_email = request.env['omniauth.auth']["info"]["email"]
      if user = User.find_by(:email => oauth_email)
        session[:user_id] = user.id
        redirect_to root_path
      else
        user = User.create(email: oauth_email, password: SecureRandom.hex)
        session[:user_id] = user.id
        redirect_to root_path
      end
    else
      user = User.find_by(:email => params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id

        redirect_to root_path
      else
        render login_path
      end
    end
  end

  def destroy
    reset_session

    redirect_to login_path
  end
end
