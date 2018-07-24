Rails.application.routes.draw do
  
  # get 'plans/index'
  # get 'plans/new'
  # get 'plans/edit'
  # get 'plans/show'

  resources :teachers
  resources :careers
  resources :students
  resources :plans

  get 'welcome/index'
  get 'welcome/contacto'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
