
class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    item = Item.new(item_params)
    if item.save
    else
      response = "failed to create Item"
    end
  end

  def destroy
    item = Item.find(params[:id])
    item.destroy
  end

  private

    def item_params
      params.permit(:name, :description, :image_url)
    end


end

