EduApp::Application.routes.draw do

  get "cards/edit"

  resources :stacks

  root :to => 'site#index'

end
