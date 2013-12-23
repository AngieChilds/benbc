Benbc::Application.routes.draw do
  resources :bookmarks

  resources :topic_articles
 resources :postmodernisms
 resources :apologetics
 resources :evangelisms
 resources :singles
 resources :women
 resources :men
 resources :generals
 resources :discipleships

 root 'welcome#index'
  match '/home',    to: 'static_pages#home',    via: 'get'
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/ministries', to: 'static_pages#ministries', via: 'get'
  match '/events', to: 'static_pages#events',   via: 'get'
  match '/outreach', to: 'static_pages#outreach',   via: 'get'
  match '/resources',    to: 'static_pages#resources',    via: 'get'
  match '/reading_list',    to: 'static_pages#reading_list',    via: 'get'
  match '/directions',   to: 'static_pages#directions',   via: 'get'
  match '/signup', to: 'users#new', via: 'get'
  match '/signin', to: 'sessions#new', via: 'get'
  match '/signout', to: 'sessions#destroy', via: 'delete'
 
end
