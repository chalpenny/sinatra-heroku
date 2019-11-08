class UsersController < ApplicationController

  # GET: /users/new
  get "/signup" do
    erb :"/users/signup.html"
  end

  post "/signup" do
    user = User.create(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    redirect "/vehicles"
  end

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

   # GET: /users
   get "/users" do
    erb :"/users/index.html"
  end

  # POST: /users
  post "/users" do
    @user = User.create(email:params[:user][:email], password: params[:user][:password])
      session[:user_id] = user.id
    
       redirect "/users"
  end

  # GET: /users/5
  get "/users/:id" do
    erb :"/users/show.html"
  end

  # GET: /users/5/edit
  get "/users/:id/edit" do
    erb :"/users/edit.html"
  end

  # PATCH: /users/5
  patch "/users/:id" do
    redirect "/users/:id"
  end

  # DELETE: /users/5/delete
  delete "/users/:id/delete" do
    redirect "/users"
  end

end
