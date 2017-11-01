class ItemsController < ApplicationController
  def index
    @items = Item.all
    stores = Store.filter("80202")
    require 'pry'; binding.pry
  end

  def show
    @item = Item.find(params[:id].to_i)
  end
end
