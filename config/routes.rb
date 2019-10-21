Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'toppages#index'
  get   'toppages'      =>  'toppages#index'     #ツイート一覧画面
  get   'toppages/new'  =>  'toppages#new'       #ツイート投稿画面
  post  'toppages'      =>  'toppages#create'    #ツイート投稿機能
  get   'pictures/new'  =>  'pictures#new'
  post  'pictures'      =>  'pictures#create'
end