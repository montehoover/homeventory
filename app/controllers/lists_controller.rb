class ListsController < ApplicationController
  before_action :is_authenticated?
  def index
    puts "current user id",@current_user.id
  	@list = Item.all.where({user_id: @current_user.id, is_shopping_list: true})
  end


  def create
    puts "create method reached"
   
    list_item = ListItem.create({name: params[:name], user_id: @current_user.id})

    puts "list item:", list_item
    redirect_to lists_path
  end


  
end
