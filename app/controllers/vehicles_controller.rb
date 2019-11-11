require_relative "../models/vehicle"

class VehiclesController < ApplicationController

  #index
    get "/vehicles" do
      redirect_if_not_logged_in
      @vehicles = Vehicle.all
      erb :"/vehicles/index.html"
    end
  
     #create vehicle
     post "/vehicles" do
      redirect_if_not_logged_in
      @vehicle = Vehicle.create(make: params[:make],model: params[:model],year: params[:year])
      redirect "/vehicles/#{@vehicle[:id]}"
    end

  #new
    get "/vehicles/new" do
      redirect_if_not_logged_in
      erb :"/vehicles/new.html"
    end
  
    #show
    get "/vehicles/:id" do
      redirect_if_not_logged_in
      @vehicle = Vehicle.find(params[:id])
      erb :"/vehicles/show.html"
    end
  
    #edit
    get "/vehicles/:id/edit" do
      redirect_if_not_logged_in
      @vehicle = Vehicle.find(params[:id])
      erb :"/vehicles/edit.html"
    end
  
    # PATCH: /vehicles/5
    patch "/vehicles/:id" do
      redirect_if_not_logged_in
      @vehicle = Vehicle.find_by_id(params[:id])
      redirect "/posts" unless @vehicle
      if @vehicle.update(make: params[:make],model: params[:model],year: params[:year])
      redirect "/vehicles/#{@vehicle[:id]}"
      else
        @error = "Vehicle couldn't be updated"
        erb :"/vehicles/edit.html"
      end
    end
  
    # DELETE: /vehicles/5/delete
    delete "/vehicles/:id/delete" do
      redirect_if_not_logged_in
      redirect "/vehicles" unless @vehicle
      if @post.update(deleted: true)
        redirect "/posts"
    end
    end

  end