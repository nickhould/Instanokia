require "instagram"

class FeedController < ApplicationController
 def index
    redirect_to :controller => 'static_pages', :action => 'home' if session[:access_token].nil?

    client = Instagram.client(:access_token => session[:access_token])
    @user = client.user
    @recent_media_items = client.user_recent_media
  end
end
