Rails.application.routes.draw do

  root 'tourest#index'

  get 'index' =>  'tourest#index'
  get 'about' =>  'tourest#about'
  get 'contact' =>  'tourest#contact'

  resources "tourest"
  
end
