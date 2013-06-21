Devjobs::Application.routes.draw do
  root to: 'home#index'

  resources :companies, only: :create do
    collection do
      get :success
    end
  end

  namespace 'admin' do
    resources :companies, only: :index
  end

end
