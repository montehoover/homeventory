class ResultsController < ApplicationController
  def index
    @item = Item.new
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @results = factual.table("products-cpg").search(params[:q]).rows
    puts @results
  end

  def show
    puts params[:id]
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @result = factual.table("products-cpg").search(params[:id]).rows
  end

  def new
    @result = :item
    puts @result
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
    params.require(:item).permit(:name, :category)
  end
end

