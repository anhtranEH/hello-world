Rails.application.routes.draw do
  root 'articles#index'
  resources :articles, only: [:index, :new, :show] do
    collection do
      post 'upload'
    end
  end
end
