require_relative "../models/vehicle"

class VehiclesController < ApplicationController

  #index
    get "/vehicles" do
      @vehicles = Vehicle.all
      erb :"/vehicles/index.html"
    end
  
  #new
    get "/vehicles/new" do
      erb :"/vehicles/new.html"
    end
  
  #create vehicle
    post "/vehicles" do
      @vehicle = Vehicle.create(make: params[:make],model: params[:model],year: params[:year])
      redirect "/vehicles/:id/#{vehicles.id}"
    end
  
    #show
    get "/vehicles/:id" do
      @vehicle = Vehicle.find(params[:id])
      erb :"/vehicles/show.html"
    end
  
    #edit
    get "/vehicles/:id/edit" do
      @vehicle = Vehicle.find(params[:id])
      erb :"/vehicles/edit.html"
    end
  
    # PATCH: /vehicles/5
    patch "/vehicles/:id" do
      @vehicle = Vehicle.find_by_id(params[:id])
      @post.update(make: params[:make],model: params[:model],year: params[:year])
      redirect "/vehicles/:id"
    end
  
    # DELETE: /vehicles/5/delete
    delete "/vehicles/:id/delete" do
      redirect "/vehicles" unless @vehicle
      if @post.update(deleted: true)
        redirect "/posts"
    end
    end

  end