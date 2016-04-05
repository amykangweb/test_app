Rails.application.routes.draw do
  resources :posts do
    collection do
      get :cached
      get :uncached
      get :collection
      get :cachedcollection
    end
  end

  root 'posts#index'
end
