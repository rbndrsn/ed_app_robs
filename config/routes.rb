EduApp::Application.routes.draw do

  get "cards/edit"

  resources :stacks
  resources :tags

  root :to => 'site#index'

end
