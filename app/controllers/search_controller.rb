class SearchController

  def index
    @stores = Store.filter(params[:zipcode])
  end

end
