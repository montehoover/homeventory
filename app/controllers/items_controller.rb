class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def create
  	Item.create item_params
    redirect_to item_path
  end

  def destroy
    deleted_item = Item.find(params[:id]).delete
    flash[:danger] = "The #{deleted_item.name} item has been deleted."
    redirect_to items_path
  end
end
