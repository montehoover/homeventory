class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def destroy
    Item.find(params[:id]).delete
    redirect_to items_path
  end
end
