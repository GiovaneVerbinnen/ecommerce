Rails.application.routes.draw do
  resources :administradores
  resources :pedidos do
    resources :pedido_produtos
  end
  resources :clientes
  resources :produtos 
  resources :tipo_produtos

  get '/admin', to: 'admin#index'

  get '/login', to: 'login#index'
  post '/login/autenticar', to: 'login#autenticar'
  get '/login/sair', to: 'login#sair'

  get '/produto/:produto_id', to: 'produto#index'
  get '/produto/:produto_id/adicionar', to: 'produto#adicionar'
  get '/produto/:produto_id/remover', to: 'produto#remover'
  get '/carrinho', to: 'produto#carrinho'


  root to: 'home#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
