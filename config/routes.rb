Rails.application.routes.draw do
  devise_for :users
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root to: 'tweets#index'
  get   'tweets'      =>  'tweets#index'     #ツイート一覧画面
  get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
  post  'tweets'      =>  'tweets#create'    #ツイート投稿機能
  get   'pictures/new'  =>  'pictures#new'
  post  'pictures'      =>  'pictures#create'
  get   'tweets/edit'  =>  'tweets#edit'
  get   'users/:id'   =>  'users#show'
  # # resources :users, only: [:edit, :update]
  
end