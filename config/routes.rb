Rails.application.routes.draw do
  root 'static_pages#home'
  get 'home', to: 'static_pages#home'
  get 'help', to: 'static_pages#help'
  get 'scripts', to: 'static_pages#scripts'
  get 'scrapers/new'
  resources :scrapers
end
