Rails.application.routes.draw do
  resources :posts

  # error pages
  match '/404', to: 'errors#not_found_error', via: [:get, :post]
  match '/422', to: 'errors#bad_entity', via: [:get, :post]
  match '/500', to: 'errors#server_error', via: [:get, :post]
  match '/400', to: 'errors#bad_request', via: [:get, :post]
  match '/403', to: 'errors#forbidden_error', via: [:get, :post]

end
