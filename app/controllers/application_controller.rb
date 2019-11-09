require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV.fetch('SESSION_SECRET') 
    register Sinatra::Flash
  end

  get "/" do
    redirect "/signup"
  end

  helpers

  def current_user 
    User.find_by_id(session[:user_id])
  end

  def logged_in?
    !!current_user
  end

  def redirect_if_not_logged_in
    unless logged_in?
      flash[:error] = "Please log in"
      redirect "/login" 
    end
  end

end
