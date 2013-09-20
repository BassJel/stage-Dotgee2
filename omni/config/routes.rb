Omni::Application.routes.draw do

  get "/auth/:provider/callback" => 'sessions#create'

  resources :sessions
  get "/home", as: "home", to: "home#index"
  get "/news", as: "news", to: "news#index"
  get "/issues", as: "issues", to: "issues#index"
  root :to => "sessions#index"
  #resources :news, only: ["index"]
  
  #authenticate :user do 
  get '/auth/:provider/callback', :to => redirect("/news")
  #end
end
