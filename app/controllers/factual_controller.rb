class FactualController < ApplicationController
  require 'factual'
  


  def index
    puts @current_user
  end

  def show
    
    @item = Item.new
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @results = factual.table("products-cpg").search(params[:q]).rows
  end

  def create
    puts params
  item = Item.create factual_params do |i|
    puts i
    i.user_id = @current_user.user_id
    i.save
    redirect_to factual_path
  end
end

  def factual_params
    params.require(:item).permit(:name, :img_url)
  end

end
