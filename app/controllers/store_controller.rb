class StoreController < ApplicationController
  def index
    @products=Product.all
    session[:counter] ||=0
    session[:counter]+=1
    @shown_message = "You've been here #{session[:counter]} times" if session[:counter] >5
  end
end




