Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "view" => "view#index"
  post "view" => "view#create"
  get "view/new" => "view#new", as: "new_tasks"
end
