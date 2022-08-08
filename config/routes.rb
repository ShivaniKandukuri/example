Rails.application.routes.draw do
  resources :consumers
  resources :books
  get 'message',to: 'books#message'
  resources :employees do
    member do
      get 'devices'
      #post 'chargers'
    end
  end
  resources :devices
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

end
