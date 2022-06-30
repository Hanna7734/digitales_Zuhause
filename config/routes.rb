Rails.application.routes.draw do
  resources :startseites
  resources :mitteilungens
  resources :zugiffsberechtigungens
  resources :profils
  #get 'home/index'
  get 'home/about'
  get 'home/ProfilMutter'
  get 'home/profilKind'
  get 'home/einstellungen'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
