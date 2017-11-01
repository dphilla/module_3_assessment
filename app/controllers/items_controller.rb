class ItemsController < ApplicationController
  def index
    @items = Item.all
    stores = BestbuyService.new("80203").get_response
  end

  def show
    @item = Item.find(params[:id].to_i)
  end
end
