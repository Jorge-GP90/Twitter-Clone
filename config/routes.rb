Rails.application.routes.draw do
  resources :swiits do
    collection do
      post :confirm
    end
  end
  root 'swiits#index'
end
