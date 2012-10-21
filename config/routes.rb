NokiaApp::Application.routes.draw do
  get "feed/index"
  match 'session/:action', :to => 'sessions'
  root :to => "static_pages#home"
  get "static_pages/home", :controller => 'static_pages', :action => 'home'

  get "static_pages/infobubble", :controller => 'static_pages', :action => 'infobubble'
end
