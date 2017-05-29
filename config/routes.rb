Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
   authenticated :user do
     root 'links#index', as: :authenticated_root
   end

   unauthenticated do
     root 'devise/registrations#new', as: :unauthenticated_root
   end
 end

 get '/' => 'links#index'
 get '/slug' => 'links#index'
 get '/slug/new' => 'links#new'
 post '/slug' => 'links#create'
 get '/slug/:id' => 'links#show'
 get '/slug/:id/edit' => 'links#edit'
 patch '/slug/:id' => 'links#update'
 delete '/slug/:id' => 'links#destroy'

 get '/slug/:id' => 'visits#create'

end
