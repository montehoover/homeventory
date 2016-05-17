class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def create
  	Item.create item_params
    redirect_to item_path
  end

  def destroy
    Item.find(params[:id]).delete
    redirect_to items_path
  end
end
