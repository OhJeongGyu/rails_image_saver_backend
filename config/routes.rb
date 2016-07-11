Rails.application.routes.draw do
  post 'user/login'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'post#in'
  post '/post' => 'post#write'
end
