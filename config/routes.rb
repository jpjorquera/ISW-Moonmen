Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  get 'home/index'
  get  'static_pages/about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
end
