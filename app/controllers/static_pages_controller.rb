class StaticPagesController < ApplicationController
  def home
  	if logged_in?
  		@micropost = current_user.microposts.build # It is for creating microposts on home page.
  		@feed_items = current_user.feed.paginate(page: params[:page]) # It is for making sure posted microposts appear on home page once logged in.
      end
    end
 
end
