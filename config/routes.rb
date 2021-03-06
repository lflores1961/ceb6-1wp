Rails.application.routes.draw do
  resources :microposts
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get    'menu'   => 'sessions#menu'
  resources :users
  get 'students/nuevo_ingreso', to: 'students#nuevo_ingreso', as: 'nuevo_ingreso'
  resources :students
  controller :students do
    get '/convert/:id', to: 'students#convert', as: 'convert'
    get '/pdf/:id', to: 'students#pdf', as: 'pdf'
  end
  
  root 'static_pages#main'

  get 'static_pages/informacion', as: 'informacion'
  get 'static_pages/servicios', as: 'servicios'
  get 'static_pages/control', as: 'control'
  get 'static_pages/virtual', as: 'virtual'
  get 'static_pages/privacidad', as: 'privacidad'
  get 'static_pages/avisos', as: 'avisos'
  get 'static_pages/under_const', as: 'under_const'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
