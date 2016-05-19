class ListsController < ApplicationController
  before_action :is_authenticated?
  def index
    puts "current user id",@current_user.id
  	@list = ListItem.where({user_id: @current_user.id})
  end


  def create
    puts "create method reached"
   
    list_item = ListItem.create({name: params[:name], user_id: @current_user.id})

    puts "list item:", list_item
    redirect_to lists_path
  end
  
end
