Rails.application.routes.draw do
  devise_for :users
  get 'welcome/index'


  resources :docs
  authenticated :user do
    root 'welcome#index', as: 'authenticated_root'
  end

  root 'welcome#index'

  delete 'docs/:id/delete' => 'docs#destroy', as: 'docs_delete'
  get '/docs/:id/delete' => 'docs#destroy'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
