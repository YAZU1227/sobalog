Rails.application.routes.draw do
  devise_for :users
  root 'top#index'
  resources :sobas, only: [:index, :new, :create] do
    collection do
      get 'search'
    end
  end
get 'search_results_sobas', to: 'sobas#search_results', as: 'search_results_sobas'
end