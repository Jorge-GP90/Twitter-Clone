Rails.application.routes.draw do
  get 'swiits/index'
  resources :swiits do
    collection do
      post :confirm
    end
  end
end
