class ServicesController < ApplicationController

    get "/services/new" do
        erb :"/services/new.html"
    end

    post "/services" do
        @service = Service.create(service_item: params[:service_item],date: params[:date],mechanic: params[:mechanic])
        redirect "/vehicles/#{@vehicle[:id]}"
    end

end
