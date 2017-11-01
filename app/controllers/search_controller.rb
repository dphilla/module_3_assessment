class SearchController < ApplicationController

  def index
    @stores = Store.filter(params[:zipcode])
  end

end
