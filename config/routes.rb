Rails.application.routes.draw do
  get 'allocations/index'
  get 'allocations/create'
  resources :proyects do
    resources :allocations, only: [:create, :destroy]
  end

  resources :workers do
    resources :allocations, only: [:create, :destroy]
  end

  resources :allocations, only: :index

  root to: 'workers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
