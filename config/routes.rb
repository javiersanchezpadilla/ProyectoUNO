Rails.application.routes.draw do
  # get 'teachers/index'
  # get 'teachers/new'
  # get 'teachers/edit'
  # get 'teachers/show'

  resources :teachers

  get 'welcome/index'
  get 'welcome/contacto'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
