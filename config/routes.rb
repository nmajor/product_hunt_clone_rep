Rails.application.routes.draw do
  devise_for :users
  root to: 'products#index' # And remove the generated route `products/index`

  resource :products, only: [ :new, :create ]
end
