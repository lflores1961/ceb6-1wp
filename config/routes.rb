Rails.application.routes.draw do
  root 'static_pages#main'

  get 'static_pages/informacion', as: 'informacion'
  get 'static_pages/servicios', as: 'servicios'
  get 'static_pages/control', as: 'control'
  get 'static_pages/virtual', as: 'virtual'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
