Rails.application.routes.draw do
  
  resources :teachers
  resources :careers
  resources :students

  get 'welcome/index'
  get 'welcome/contacto'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
