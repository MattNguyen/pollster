Pollster::Application.routes.draw do
  root :to => 'polls#index'
  resources :polls

  match '/:edit_url' => redirect( '/polls/%{edit_url}' )
end
