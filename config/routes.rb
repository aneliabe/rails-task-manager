Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  get "tasks" => "task#index"
  get "tasks/new" => "task#new", as: :new
  get "tasks/:id" => "task#show", as: :task
  post "tasks" => "task#create"
  get "tasks/:id/edit" => "task#edit", as: :edit
  patch "tasks/:id" => "task#update"
  delete "tasks/:id" => "task#destroy"
end
