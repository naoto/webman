Rails.application.routes.draw do
  resources :sites
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "webmans#main"
end
