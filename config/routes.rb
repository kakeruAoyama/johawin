Rails.application.routes.draw do
  get 'users/show' => 'users#show' ,as: 'user'
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'   
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

  get 'oth_eva/new/:url_token' => 'oth_eva#new',as:'oth_eva'
  post 'oth_eva/create' => 'oth_eva#create'
  get 'oth_eva/recommend' => 'oth_eva#recommend'

  get 'my_eva/new' => 'my_eva#new'
  post 'my_eva/create' => 'my_eva#create'
  delete 'my_eva/show/:id' => 'my_eva#destroy',as:'oth_eva_destroy'
  
  
  get 'my_eva/show/:id' => 'my_eva#show' ,as:'my_eva_show'

  get 'my_eva/edit/:id' => 'my_eva#edit' ,as:'my_eva_edit'
  resources :my_eva, only: [:edit, :update]

  get 'top/index' => 'top#index'
  root 'top#index'
  get 'about' => 'users#about' ,as:'about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
