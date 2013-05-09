EduApp::Application.routes.draw do

  resources :stacks
  resources :tags

  root :to => 'site#index'

end
