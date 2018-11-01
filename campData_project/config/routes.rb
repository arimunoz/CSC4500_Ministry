Rails.application.routes.draw do
  get 'pages/login'
  get 'pages/registration'
  get 'pages/admin_page'
  resources :church_names
  resources :payment_informations
  resources :emergency_contacts
  resources :camp_members
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
