class ServicesController < ApplicationController

    get "/services/new" do
        erb :"/services/new.html"
    end

    post "/services" do
        binding.pry
        @service = Service.create(service_item: params[:service_item],date: params[:date],mechanic: params[:mechanic])
        binding.pry
        redirect "/vehicles/#{@vehicle[:id]}"
    end

end
