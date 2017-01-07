Rails.application.routes.draw do
  resources :beaches do
    collection do
      get :add_pin
      get :add_pins
      get :remove_all_pins
    end
  end
  
  root to: 'beaches#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
