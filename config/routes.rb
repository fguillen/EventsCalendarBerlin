Rails.application.routes.draw do
  resources :calendar_events, :only => [:index]
end
