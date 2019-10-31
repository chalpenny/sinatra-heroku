class SessionsnController < ApplicationController
    
    get "/login" do
        @user = User.new
        erb :"/sessions/new"
    end

    post "/login" do
        @user = User.find_by(email: params[:user][:email])
        if @user && @user.authenticate(params[:user][:password])

        else
            render :"/sessions/new"
        end
    end

end