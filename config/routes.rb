Newrelic::Application.routes.draw do
  resources :apples
  resources :bananas
  resources :carrots
  resources :dragonfruits
  resources :eggplants
  resources :fennels
  resources :grapefruits
  resources :horseradishes
  resources :inga_beans
  
  root to: 'debug#index'
end
