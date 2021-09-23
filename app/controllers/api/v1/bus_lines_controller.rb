require 'json'

module Api
  module V1
  
    class BusLinesController < ApplicationController
      before_action :set_bus_line, only: [:show, :update, :destroy]
    
      # GET /bus_lines
      def index
        @bus_lines = BusLine.all

        h = Array.new
        @bus_lines.each do |item|
          # do whatever
          if h.length == 0
            h[0] = { "lineNumber" => item.lineNumber, "busRoutes" => [ item.busRoutes ]}
          else
            ind = h.index{ |x| x['lineNumber'] == item.lineNumber}

            if (ind != nil && ind > -1)
              h[ind]['busRoutes'].push(item.busRoutes)
            else
              h[h.length] = { "lineNumber" => item.lineNumber, "busRoutes" => [ item.busRoutes ]}
            end

          end
        end

        render json: h
      end
    
      # GET /bus_lines/1
      def show
        render json: @bus_line
      end
    
      # POST /bus_lines
      def create
        json = JSON.parse(request.body.read)

        save = true

        @bl = BusLine.new(bus_line_params)
        
        json['busRoutes'].each do | busRoute |

          @bus_line = BusLine.new({ "lineNumber"=> json['lineNumber'], "busRoutes"=> busRoute})

          if @bus_line.save
            save = true
          else
            save = false
          end
            
        end
        
        if save
          render json: {status: 200, message: "route saved"}, status: :created
        else
          render json: @bus_line.errors, status: :unprocessable_entity
        end

        
      end
    
      # PATCH/PUT /bus_lines/1
      def update
        if @bus_line.update(bus_line_params)
          render json: @bus_line
        else
          render json: @bus_line.errors, status: :unprocessable_entity
        end
      end
    
      # DELETE /bus_lines/1
      def destroy
        @bus_line.destroy
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_bus_line
          @bus_line = BusLine.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def bus_line_params
          
          params.require(:bus_line).permit(:lineNumber, :busRoutes)
        end

        def math(num1, num3)
          return num1 + num3
        end
    end
  
  end
end

