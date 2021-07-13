Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "statics#home"
  get  '/tour_detail',    to: 'statics#tour_detail'
  get  '/contact',    to: 'contacts#new'
  get "/thanks" => "contacts#thanks"

  resource :contacts, only: [:create]
  # resources :tours, only: %i(show index)

  get '*path', controller: 'application', action: 'render_404'
end
