class SessionsController < ApplicationController
    
    get "/login" do
        erb :"/users/login.html"
      end
    
      post "/login" do
        user = User.find_by(email: params[:email])
        if user.authenticate(params[:password]) 
          session[:user_id] = user.id
          redirect "/vehicles"
        else
          flash[:error] = "Incorrect email or password.  Please sign up or login"
          erb :"/users/signup.html"
        end
      end

      delete "/logout" do
        session.clear
        redirect "/"
      end

end