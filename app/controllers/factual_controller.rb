class FactualController < ApplicationController
  require 'factual'
  


  def index
    puts @current_user
  end

  def show
    
    
  end

  def create
    

    params = factual_params
    puts params

    item = Item.create params do |i|
    puts i
    i[:user_id] = @current_user[:user_id]
    i.save
    redirect_to factual_path
  end
end

  def factual_params
    params.require(:item).permit(:name, :img_url)
  end

end
