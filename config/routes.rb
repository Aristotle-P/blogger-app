Rails.application.routes.draw do
  get 'welcome/index'
  resources :articles do
    resources :comments, dependent: :destroy
  end
  root 'welcome#index'
end
