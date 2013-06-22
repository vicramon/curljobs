Devjobs::Application.routes.draw do
  root to: 'home#index'

  resources :companies, only: :create do
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

  match 'admin/login', to: 'admin#login', as: 'admin_login', via: [:get, :post]

  get 'contact', to: 'home#contact', as: 'contact'
  get 'about', to: 'home#about', as: 'about'
  get 'faq', to: 'home#faq', as: 'faq'


end
