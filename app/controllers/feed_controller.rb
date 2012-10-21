require "instagram"
require 'geokit'
include GeoKit::Geocoders

class FeedController < ApplicationController
	def index
 	end

 	def geolocation
 		if params[:location]
 			location = params[:location]
 			coords = MultiGeocoder.geocode(location)
			@longitude = coords.lng
  		@latitude = coords.lat
  		@recent_media_items = get_recent_media_items(@latitude, @longitude)
  	else	
	  	@longitude = params[:lon]
  		@latitude = params[:lat]
  		@recent_media_items = get_recent_media_items(@latitude, @longitude)
		end
 	end

 	def get_recent_media_items(latitude, longitude)
 		distance = "1000"
		client = Instagram.client(:access_token => session[:access_token])
    @user = client.user
    @recent_media_items = Instagram.media_search(latitude, 
    																						 longitude, 
    																						 distance: distance)

 	end
end
