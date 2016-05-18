class ItemsController < ApplicationController
  def index
    puts @current_user.id
  	@items = Item.where({user_id: @current_user.id})
  end
  
  def show
    @item = Item.find params[:id]
  end

  def new
  	@item = Item.new
  end

  def update
    puts params
    item = Item.find params[:id]
    item.update is_favorite
      redirect_to factual_path
  end


  def destroy
    deleted_item = Item.find(params[:id]).delete
    flash[:danger] = "The #{deleted_item.name} item has been deleted."
    redirect_to items_path
  end

  def is_favorite
  {is_favorite: true}
  end
end
