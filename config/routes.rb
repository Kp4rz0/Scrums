Rails.application.routes.draw do

  get 'welcome/login', to: 'welcome#login'
  get 'welcome/home', to: 'welcome#home'

  post 'welcome/login', to: 'welcome#login'
  post 'welcome/home', to: 'welcome#home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
