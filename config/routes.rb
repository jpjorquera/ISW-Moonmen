Rails.application.routes.draw do
  #####Seccion del API
  namespace :api do
    resources :orden_compras
  end
  #####
  get 'aux_bodobra', to: 'reg_aux#bodobra'
  get 'aux_bodcentral', to: 'reg_aux#bodcentral'
  get 'aux_personal', to: 'reg_aux#personal'
  post 'aux_bodobra', to: 'reg_aux#bo_create'
  post 'aux_bodcentral', to: 'reg_aux#bc_create'
  post 'aux_personal', to: 'reg_aux#po_create'
  get 'testmail', to: 'testmail#index'
  get '/materiales', to: 'materiales#index'
  get 'materiales/agregar'
  get 'materiales/peticion'
  get '/inventario', to: 'inventario#ver'
  get '/inventario/agregar', to: 'inventario#agregar'
  post '/inventario/agregar', to: 'inventario#add'
  get '/inventario/sacar', to: 'inventario#sacar'
  post '/inventario/sacar/update', to: 'inventario#update_sacar'
  post '/solicituds/:id/add', to: 'solicituds#add'
  post '/solicituds/:id/add_create', to: 'solicituds#add_create'
  post '/solicituds/:id/enviar', to: 'solicituds#enviar'
  post '/solicituds/responder', to: 'solicituds#responder'
  post '/solicituds/confirmar', to: 'solicituds#confirmar'
  post '/solicituds/confirmar/action', to: 'solicituds#action_confirmar'
  post '/solicituds/responder/envio', to: 'solicituds#envio_solicitud', defaults: { :format => 'json' }
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
  resources :solicituds
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
