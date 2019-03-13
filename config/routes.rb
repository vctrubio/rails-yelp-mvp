Rails.application.routes.draw do
  get 'reviews/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "restaurants#index"
  resources :restaurants do
    resources :reviews, only: [ :new, :create ]
  end
end




# resources :restaurants do
#   resources :reviews, only: [ :index, :new, :create ]
# end