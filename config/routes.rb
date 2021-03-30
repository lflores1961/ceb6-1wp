Rails.application.routes.draw do
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
  get 'static_pages/under_const', as: 'under_const'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
