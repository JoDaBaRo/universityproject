Rails.application.routes.draw do
  devise_for :users
  root 'pages#welcome'
  resources :students, :path => 'estudiantes'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
