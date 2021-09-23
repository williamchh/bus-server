Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :buses, path: 'Bus'
      resources :time_schedules, path: 'TimeSchedule'
      resources :bus_lines, path: 'Line'
      resources :bus_routes, path: 'Route'
      resources :stops, path: 'Stop'
    end
  end


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
