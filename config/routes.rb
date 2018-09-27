Rails.application.routes.draw do
  get "login" => "users#login_form"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "users/index" => "users#index"

  get "staffs/index" => "staffs#index"  
  get "staffs/:id" => "staffs#show"
  get "signup" => "staffs#new"
  post "staffs/create" => "staffs#create"
  get "staffs/:id/edit" => "staffs#edit"
  post "staffs/:id/update" => "staffs#update"

  
  get '/' => "home#top"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
