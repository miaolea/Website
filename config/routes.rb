Rails.application.routes.draw do
  devise_for :admins
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'blog#home'

  resources :posts

  get '/admin', to: redirect('/admins/sign_in')
  get '/admins/sign_up', to: redirect('blog#home')

  get 'blog' => 'posts#index'
end
