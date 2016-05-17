class ItemsController < ApplicationController
  def index
  	@items = Item.all
  end

  def new
  	@item = Item.new
  end

  def show
    @item = Item.find params[:id]
  end

  def destroy
    Item.find(params[:id]).delete
    redirect_to items_path
  end
end
