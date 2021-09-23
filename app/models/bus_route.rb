class BusRoute < ApplicationRecord
    has_many :Stop
    # attr_accessor :routeName, :stops

    # def initialize(route, stop)
    #     @routeName = route
    #     @stops = stop
    # end

    # def initialize()
    # end
end
