Rails.application.routes.draw do
  # Read all tasks
  get "/tasks", to: "tasks#index"

  # Create - Step 1, GET the form
  # GET http://localhost:3000/restaurants/new
  get "/tasks/new", to: "tasks#new", as: :new_task
  # Edit the Task
  get "tasks/:id/edit", to: "tasks#edit", as: :edit_task
  # Delete the task
  delete "tasks/:id", to: "tasks#destroy", as: :destroy_task
  # Show one task
  get "/tasks/:id", to: "tasks#show", as: :task
  # Post
  post "tasks", to: "tasks#create"
  # Patch the file
  patch "tasks/:id", to: "tasks#update"





  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
