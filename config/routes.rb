Rails.application.routes.draw do
  devise_for :users
  root 'pages#welcome'
  resources :students, :path => 'estudiantes'
  resources :teachers, :path => 'profesores'
  resources :licences, :path => 'licencias'
  resources :classes, :path => 'clases'
  resources :vehicles, :path => 'vehiculos'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
