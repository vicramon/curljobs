Devjobs::Application.routes.draw do

  resources :companies, only: [:new, :create] do
    collection do
      get :success
    end
  end

  resources :candidates, only: [:new, :create] do
    collection do
      get :success
    end
  end

  namespace 'admin' do
    root to: 'dashboard#index'
    resources :candidates, only: [:index, :show]
    resources :companies, only: :index
  end

  root to: 'home#index'
  match 'admin/login', to: 'admin#login', as: 'admin_login', via: [:get, :post]
  get 'companies/how-it-works', to: 'home#companies_how_it_works', as: 'companies_how_it_works'
  get 'devs/how-it-works', to: 'home#devs_how_it_works', as: 'devs_how_it_works'

end
