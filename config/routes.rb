Rails.application.routes.draw do
  resources :calendar_events, :only => [:index] do
    get :index_back, :on => :collection
  end
end
