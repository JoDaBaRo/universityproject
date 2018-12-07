Rails.application.routes.draw do
  devise_for :users
  root 'pages#welcome'

  namespace :api do
    get 'teachers/:licence_type_id', to: 'teachers#fetch_teachers'
    get 'students/:teacher_id', to: 'students#fetch_students'
    get 'classes/:class_type', to: 'classes#fetch_topics'
  end

  resources :people, :path => 'personas'


  resources :students, :path => 'estudiantes' do
    resources :enrollments, :path => 'matriculas' do
      resources :student_advances, :path => 'pagos'
    end
    resources :student_licences, :path => 'licencias'
  end

  resources :teachers, :path => 'profesores' do
    resources :teacher_categories, :path => 'categorias'
  end

  resources :practical_classes, :path => 'clases_practicas' do
    resources :practical_licence_classes, :path => 'categorias'
  end

  resources :teachers, :path => 'profesores'
  resources :licence_types, :path => 'tipo_de_licencias'
  resources :classes, :path => 'clases'
  post 'classes/create', to: 'classes#create'
  resources :practical_classes, :path => 'clases_practicas'
  resources :theoretical_classes, :path => 'clases_teoricas'
  resources :vehicles, :path => 'vehiculos'
  resources :vehicle_categories, :path => 'categoria_vehiculos'
  resources :general_costs, :path => 'tipo_de_costo'
  resources :control_tests, :path => 'prueba_control'
  resources :tests, :path => 'examenes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
