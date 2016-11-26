Rails.application.routes.draw do
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]

  # chores routes

  get '/chores', to: 'chores#index'
  get '/chores/:id', to: 'chores#show'
  post '/chores', to: 'chores#create'
  patch 'chores/:id', to: 'chores#update'
  delete 'chores/:id', to: 'chores#destroy'
end
