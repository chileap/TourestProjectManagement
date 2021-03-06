Rails.application.routes.draw do

  resources :galleries
  match '/contacts',     to: 'contacts#new',             via: 'get'
  resources "contacts", only: [:new, :create]

  devise_for :users, :controllers => { omniauth_callbacks: 'omniauth_callbacks' , registrations: 'registrations' }
  match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], :as => :finish_signup
  root 'tourest#index'

  as :user do
    get '/users/sign_out' => 'devise/sessions#destroy'       
    put "users/:id" => "users#update"     
  end
  get 'new' => 'galleries#new'
  get 'index' =>  'tourest#index'
  get 'about' =>  'tourest#about'
  get 'contact' =>  'tourest#contact'

  get 'users/update'

  get 'users/finish_signup'

  resources "tourest"

  resources "users"
  
end

