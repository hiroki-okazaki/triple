Rails.application.routes.draw do
  get 'home' => "home#top"
  get "about" => "home#about"
  devise_for :registrants
  resources :users
  root "users#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
