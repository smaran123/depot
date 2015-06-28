Rails.application.routes.draw do
  get 'carts/show'

  get 'store/index'

resources :products
resources :line_items
root to: 'store#index', as: 'store'
  

end
