Pirktibalsai::Application.routes.draw do
  root :to => 'welcome#index'
  resources :pazeidimai, :as => 'spots', :controller => 'spots', :path_names => {
    :new => 'naujas'
  }
  match 'apie' => 'about#index', :as => 'about'
  match 'statistika' => 'statistics#index', :as => 'statistics'
  devise_for :admins
end
