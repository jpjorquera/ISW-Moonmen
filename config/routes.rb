Rails.application.routes.draw do
  get 'testmail', to: 'testmail#index'
  get '/materiales', to: 'materiales#index'
  get 'materiales/agregar'
  get 'materiales/peticion'
  get '/inventario', to: 'inventario#ver'
  get '/inventario/agregar', to: 'inventario#agregar'
  post '/inventario/agregar', to: 'inventario#add'
  resources :materials
  resources :inventario_centrals
  resources :abastecimiento_obras
  resources :abastecimiento_centrals
  resources :bodega_centrals
  resources :inventario_obras
  resources :bodega_obras
  resources :proveedors
  resources :orden_compras
  resources :encargado_compras
  resources :bodeguero_centrals
  resources :bodeguero_obras
  resources :personal_obras
  root    'static_pages#home'
  get     '/help', to: 'static_pages#help'
  get     '/about', to: 'static_pages#about'
  get     '/contact', to: 'static_pages#contact'
  get     '/signup', to: 'users#new'
  post    '/signup',  to: 'users#create'
  get     '/login',   to: 'sessions#new'
  post    '/login',   to: 'sessions#create'
  delete  'logout',  to: 'sessions#destroy'
  get     '/operations', to: 'operations#center'
  get     'home/index'

  resources :users
end
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
