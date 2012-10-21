NokiaApp::Application.routes.draw do
  get "feed/index"
  match 'session/:action', :to => 'sessions'
  root :to => "feed#index"
  post "feed/index", :controller => "Feed", :action => "index"
  get "feed/geolocation", :controller => "feed", :action => "geolocation"
  match "feed/geolocation" => "feed#geolocation", :as => :geolocation
  get "static_pages/home", :controller => 'static_pages', :action => 'home'
  get "static_pages/maps", :controller => 'static_pages', :action => 'maploader'
  get "static_pages/xmlcheck", :controller => 'static_pages', :action => 'markersxmltest'
  get "static_pages/markers", :controller => 'static_pages', :action => 'markers'
end
