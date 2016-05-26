Rails.application.routes.draw do
  devise_for :suppliers
  devise_for :customers
  resources :categories
  resources :circles do
    member do
      get 'add_customer'
    end
  end
  resources :customers do
    member do
      get :following, :followers
    end
  end
  resources :suppliers
  resources :relationships, only: [:create, :destroy]
  resources :products do
  	collection do
  		get 'search'
  	end
  end
  

  get 'welcome/index'


	authenticated :supplier do
		root 'suppliers#index', as: "authenticated_supplier"
	end

	authenticated :customer do
		root 'customers#index', as: "authenticated_customer"
	end

  root 'welcome#index'
end
