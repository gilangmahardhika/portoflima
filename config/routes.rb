Portfolio::Application.routes.draw do
  root  :to => "home#index"

  get "about/index"

  # Session Login/Logout/Register
  get "session/login"
  get "session/logout"
  get "session/register"
  get "home/index"
  get "admin/index"
  match "/auth/:provider/callback" => "session#login"

  resources :user_skills

  resources :work_galleries

  resources :points

  resources :loves

  resources :comments

  resources :works
    match '/works/:id/:title' => "works#show", :as => :show
    #get 'works/my_works'
    match '/my-works' => "works#my_works", :as => :my_works
    #get 'the_best'
    match '/6-the-best' => "works#the_best", :as => :the_best
  
    

  resources :skill_categories

  resources :skills

  resources :user_types

  resources :users
    match '/users/:id/:name' => "users#show", :as => :user
end
