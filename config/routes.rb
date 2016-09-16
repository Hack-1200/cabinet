Rails.application.routes.draw do
  devise_for :users
  
  resources :docs

  authenticated :user do
  	root "docs#index",as:"authendicated_root"
  end
  root 'welcome#index'
end
