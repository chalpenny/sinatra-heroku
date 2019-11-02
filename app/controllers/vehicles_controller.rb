class VehiclesController < ApplicationController

    get "/vehicles" do
      erb :"/vehicles/index.html"
    end
  
    get "/vehicles/new" do
      erb :"/vehicles/new.html"
    end
  
    # POST: /vehicles
    post "/vehicles" do
      if vehicle = Vehicle.create(email:params[:vehicle][:email], password: params[:user][:password])
        session[:user_id] = user.id
      end
        redirect "/vehicles"
    end
  
    # GET: /vehicles/5
    get "/vehicles/:id" do
      erb :"/vehicles/show.html"
    end
  
    # GET: /vehicles/5/edit
    get "/vehicles/:id/edit" do
      erb :"/vehicles/edit.html"
    end
  
    # PATCH: /vehicles/5
    patch "/vehicles/:id" do
      redirect "/vehicles/:id"
    end
  
    # DELETE: /vehicles/5/delete
    delete "/vehicles/:id/delete" do
      redirect "/vehicles"
    end
  end