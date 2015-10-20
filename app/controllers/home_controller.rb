class HomeController < ApplicationController
  
  def index
    if user_signed_in?
      redirect_to :controller => "ratings", :action => "dashboard"
    end
    
  end
end
