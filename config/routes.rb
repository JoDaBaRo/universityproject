Rails.application.routes.draw do
  devise_for :users
  root 'pages#welcome'
  
namespace :api do
  get 'teachers/:licence_type_id', to: 'teachers#fetch_teachers'
end

  resources :people, :path => 'personas'
  

  resources :students, :path => 'estudiantes' do
    resources :enrollments, :path => 'matriculas'
  end


  resources :teachers, :path => 'profesores'
  resources :licences, :path => 'licencias'
  resources :classes, :path => 'clases'
  resources :practical_classes, :path => 'clases_practicas'
  resources :theoretical_classes, :path => 'clases_teoricas'
  resources :vehicles, :path => 'vehiculos'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
