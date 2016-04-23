Rails.application.routes.draw do

  resources :peeps
  resources :cats
  resources :posts do
    resources :comments
    member do
      get :includeshow
    end
    collection do
      get :cached
      get :uncached
      get :collection
      get :cachedcollection
      get :loaded
      get :cachedloaded
      get :direct
    end
  end

  root 'posts#index'
end
