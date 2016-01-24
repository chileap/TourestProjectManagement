Rails.application.routes.draw do

  root 'tourest#index'

  get 'index' =>  'tourest#index'
  get 'about' =>  'tourest#about'
  get 'contact' =>  'tourest#contact'
  get 'login' =>  'tourest#login'
  get 'register' =>  'tourest#register'

  resources "tourest"
  
end
