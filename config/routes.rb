Rails.application.routes.draw do
  resources :projects
  resources :workers
  post 'assignments/:project_id', to: "assignments#create", as: 'assign_worker'
  delete 'assignments/:project_id/:worker_id', to: 'assignments#destroy', as: 'remove_worker'
  root 'projects#index'
end
