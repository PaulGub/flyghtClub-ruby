Rails.application.routes.draw do
  get 'flights/index'
  get 'flights/show'
  get 'flights/new'
  get 'flights/create'
  get 'flights/edit'
  get 'flights/update'
  get 'flights/destroy'
  get 'bookings/index'
  get 'bookings/show'
  get '/:flight_number/bookings/new', to: 'bookings#new', as: 'bookings_new'
  get 'bookings/create'
  get 'bookings/edit'
  get 'bookings/update'
  get 'bookings/destroy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "flights#index"
end
