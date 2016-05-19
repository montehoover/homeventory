class ItemsController < ApplicationController
  before_action :is_authenticated?
  def index
  	@items = Item.where({user_id: @current_user.id})
  end
  
  def show
    @item = Item.find params[:id]
  end

  def new
  	@item = Item.new
  end

  # Sets is_favorite of the item to true, thus adding it to the favorites list
  def update
    puts params
    item = Item.find params[:id]
    item.update is_favorite
    redirect_to items_path
  end

  def 

  def reset_count
    @item = Item.find(params[:id]).update(count: 0)
    redirect_to item_path(params[:id])
  end

  def destroy
    deleted_item = Item.find(params[:id]).delete
    flash[:danger] = "The #{deleted_item.name} item has been deleted."
    redirect_to items_path
  end

  def is_favorite
    {is_favorite: true}
  end

  def not_favorite
    {is_favorite: false}
  end
end
