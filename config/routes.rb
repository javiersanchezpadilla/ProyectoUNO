Rails.application.routes.draw do
  
  resources :subjects
  resources :professors
  # get 'plans/index'
  # get 'plans/new'
  # get 'plans/edit'
  # get 'plans/show'

  resources :teachers
  resources :careers do
    collection do
      get 'uziel'
      post 'import'
    end
  end
  resources :students
  resources :plans

  get 'welcome/index'
  get 'welcome/contacto'

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
