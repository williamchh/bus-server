require 'json'

module Api
  module V1
    class BusRoutesController < ApplicationController
      before_action :set_bus_route, only: [:show, :update, :destroy]
    
      # GET /bus_routes
      def index
        @bus_routes = BusRoute.all
      
        render json: @bus_routes
      end
    
      # GET /bus_routes/1
      def show
        render json: @bus_route
      end
    
      # POST /bus_routes
      def create
        
        json = JSON.parse(request.body.read)

        save = true

        json['stops'].each do |stop|
          @s = Stop.find(Integer(stop))
        
          # @bus_route = BusRoute.new(bus_route_params)
          @bus_route = BusRoute.new({"routeName"=>json['routeName'], "stops"=>@s.code})

          puts (@bus_route.stops)

          if @bus_route.save
            save = true
          else
            save = false
          end
          
        end
          
        if save
          render json: {status: 200, message: "route saved"}, status: :created
        else
          render json: @bus_route.errors, status: :unprocessable_entity
        end

  
      end
    
      # PATCH/PUT /bus_routes/1
      def update
        if @bus_route.update(bus_route_params)
          render json: @bus_route
        else
          render json: @bus_route.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /bus_routes/1
      def destroy
        @bus_route.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_bus_route
          @bus_route = BusRoute.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def bus_route_params
          params.require(:bus_route).permit(:routeName)
        end
    end

  end
end
