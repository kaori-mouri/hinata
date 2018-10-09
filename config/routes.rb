Rails.application.routes.draw do
  get 'schedule/index' => "schedule#index"
  get 'schedule/new' => "schedule#new"
  post "staff_schedules/create" => "staff_schedules#create"
  get "staff_schedules/new" => "staff_schedules#new"
  get "staff_schedules/index" => "staff_schedules#index"
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
