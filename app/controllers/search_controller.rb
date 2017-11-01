class SearchController < ApplicationController

  def index
    @stores = Store.filter(params[:zipcode])  #Eventually add pagination here
  end

end
