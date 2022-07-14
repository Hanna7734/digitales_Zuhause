Rails.application.routes.draw do
  devise_for :users
  resources :startseites
  resources :mitteilungens
  resources :zugiffsberechtigungens
  resources :profils
  #get 'home/index'
  get 'home/about'
  get 'home/ProfilMutter'
  get 'home/profilKind'
  get 'home/einstellungen'
  get 'home/impressum'
  get 'home/erledigteAnt' 
  get 'home/anAnt'
  get 'home/weitereDetails'
  get 'home/antstellen'
  get 'home/genehmigungspflichtigeAnt'
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
