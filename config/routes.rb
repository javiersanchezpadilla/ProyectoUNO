Rails.application.routes.draw do
  get 'careers/index'

  get 'careers/new'

  get 'careers/edit'

  get 'careers/show'

  # get 'teachers/index'
  # get 'teachers/new'
  # get 'teachers/edit'
  # get 'teachers/show'

  resources :teachers
  resources :careers

  get 'welcome/index'
  get 'welcome/contacto'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
