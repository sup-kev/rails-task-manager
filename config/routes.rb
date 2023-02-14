Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get '/tasks', to: 'tasks#index'
  # Defines the root path route ("/")
  # root "articles#index"
  get '/tasks/new', to: 'tasks#new', as: :new_task

  #read one
  get '/tasks/:id', to: 'tasks#show', as: :task

  # update
  get '/tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch '/tasks/:id', to: 'tasks#update'

  # destroy
  delete '/tasks/:id', to: 'tasks#destroy'

  #create
  post 'tasks', to: 'tasks#create'
end
