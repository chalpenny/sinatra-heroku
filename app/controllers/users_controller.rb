class UsersController < ApplicationController

  # GET: /users/new
  get "/signup" do
    erb :"/users/signup.html"
  end

  post "/signup" do
    user = User.create(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation]) 
    session[:user_id] = user.id   
    redirect "/vehicles"
  end

end
