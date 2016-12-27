Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :usuarios do
    collection do
      post 'llenarFacultades'
    end
    collection do
      post 'llenarDepartamentos'
    end
    collection do
      post 'llenarCarreras'
    end
  end
  
  root 'welcome#home'

  resources :scrums do
    collection do
      post 'selectProyecto'
    end
  end
  
  get 'login', to:'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #  get 'welcome/home', to: 'Welcome#home'
  #  get 'welcome/about', to: 'Welcome#about'
end
