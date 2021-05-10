Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "statics#home"
  get  '/tour_detail',    to: 'statics#tour_detail'
  get  '/contact',    to: 'contacts#new'

  resource :contacts, only: [:create] do
    get "/thanks" => "contacts#thanks"
  end
end
