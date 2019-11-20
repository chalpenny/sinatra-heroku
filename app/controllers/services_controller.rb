class ServicesController < ApplicationController

    post "/services" do
        redirect_if_not_logged_in
        @service = Service.create(service_item: params[:service_item],date: params[:date],mechanic: params[:mechanic], cost: params[:cost],vehicle_id: params[:vehicle_id])
        redirect "/vehicles/#{@service[:vehicle_id]}"
    end

end
