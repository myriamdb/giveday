Rails.application.routes.draw do
  devise_for :users

  unauthenticated do
    root to: 'pages#home'
  end

  authenticated do
    root to: 'users#dashboard', as: :authenticated_root
  end

  resources :users do
    resources :kids, only: [ :new, :create, :show ]
    # collection do
    #   get :channel
    # end
end
end
