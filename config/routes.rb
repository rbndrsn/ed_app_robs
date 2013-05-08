EduApp::Application.routes.draw do

  resources :stacks

  root :to => 'site#index'

end
