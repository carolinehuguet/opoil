Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # à ajouter si on a le temps:
  # resources :users, only: [:index, :show]

  resources :dogs do
    resources :walks, only: [:new, :create]
  end

  resources :walks, only: [:show] do
    member do
      patch "accept"
      patch "deny"
      patch "cancel"
    end
  end

  resource :dashboard, only: [:show]
end

# user has_many dogs, walks
# dog has_many walks
# walk belongs_to users, dogs
