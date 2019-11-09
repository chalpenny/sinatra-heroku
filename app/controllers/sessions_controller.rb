class SessionsnController < ApplicationController
    
    get "/login" do
        erb :"/users/login.html"
      end
    
      post "/login" do
        user = User.find_by_id(params[:id])
        if user.authenticate(params[:password])
          session[:user_id] = user_id
          redirect "/vehicles"
        else
          erb :"/users/login.html"
        end
      end

      delete "/logout" do
        session.clear
        redirect "/"
      end

end