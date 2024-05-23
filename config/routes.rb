Rails.application.routes.draw do
  resources :blog_posts
  get "up" => "rails/health#show", as: :rails_health_check
  get "about" => "blog_posts#about", as: "about_blog_posts"
  
  root "blog_posts#home"
end