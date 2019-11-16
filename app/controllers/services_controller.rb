class ServicesController < ApplicationController

    get "/services/new" do
        erb :"/services/new.html"
    end

    post "/services" do
        binding.pry
        @service = Service.create(service_item: params[:service_item],date: params[:date],mechanic: params[:mechanic], vehicle_id: params[:vehicle_id])
        binding.pry
        redirect "/vehicles/#{@service[:vehicle_id]}"
    end

end
