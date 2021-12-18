Rails.application.routes.draw do
  resources :lists, only: [:new, :create, :index, :show] do
    resources :bookmarks, only: [:new, :create]
  end
  # nesting, car on passe d'une base vers l'autre pour faire les manips
  resources :bookmarks, only: [:destroy]
end
