Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "statics#home"
  get  '/tour_detail',    to: 'statics#tour_detail'
  
  resource :contacts, only: [:new, :create] do
    get "/thanks" => "contacts#thanks"
  end
end
