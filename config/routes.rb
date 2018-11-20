Rails.application.routes.draw do
  get 'tasks', to: "tasks#index"

  get 'tasks/new', to: "tasks#new"
  post 'tasks', to: "tasks#create"

  get 'tasks/:id', to: "tasks#show", as: :task

  get 'tasks/:id/edit', to: "tasks#edit", as: :edit_path
  patch 'tasks/:id', to: "tasks#update", as: :update

  delete 'tasks/:id', to: "tasks#destroy"
end
