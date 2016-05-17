class FactualController < ApplicationController
  require 'factual'
  


  def index
  end

  def show
    puts params
    @item = Item.new
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @results = factual.table("products-cpg").search(params[:q]).rows
  end

  def create
  item = Item.create factual_params
  redirect_to factual_path
  end


  def factual_params
    params.require(:item).permit(:name, :img_url)
  end

end
