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
  #  get 'welcome/home', to: 'Welcome#home'
  #  get 'welcome/about', to: 'Welcome#about'
end
