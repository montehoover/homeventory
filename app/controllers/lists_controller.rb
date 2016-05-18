require 'pry'


class ListsController < ApplicationController
  def index
  	@list = List.all
  end


  def create
    puts "create method reached"
   
    list_item = ListItem.create(name: params[:name])
    binding.pry
    puts "list item:", list_item
  end
end
