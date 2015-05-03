Rails.application.routes.draw do
  
  resources :donations

  get 'set_language/english'
  get 'set_language/german'


  resources :members do
		resources :incomes
		resources :receipts
  end

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
