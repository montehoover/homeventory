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

  # Check to see if item already exists; if so, update it and add to the existing count.
  def create
    puts @current_user[:user_id]
    item = Item.find_by factual_id: params[:factual_id]
    if item
      item.update update_item_params
      item.update(count: item.count + params[:count].to_f)
    else
      item = Item.create new_item_params
    end
    redirect_to items_path
  end

  # Sets is_favorite of the item to true, thus adding it to the favorites list
  def update
    Item.find(params[:id]).update(is_favorite: true)
    redirect_to factual_path
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


  def not_favorite
    {is_favorite: false}
  end


  private

  # Returns parameters needed for updating an item; doesn't include the count so old count doesn't get overwritten
  def update_item_params
    {name: params[:name], brand: params[:brand], img_url: params[:img_url], factual_id: params[:factual_id], exp_date: params[:exp_date], user_id: params[:user_id], is_favorite: params[:is_favorite]}
  end

  # Returns the parameters for creating a new item; takes hash from update_item_params and add count (key: value) to it
  def new_item_params
    update_item_params.merge(count: params[:count].to_f)
  end

end
