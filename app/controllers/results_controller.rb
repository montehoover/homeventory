class ResultsController < ApplicationController
  before_action :is_authenticated?
  def index
    @item = Item.new
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @results = factual.table("products-cpg").search(params[:q]).rows
    # @result = factual.table("products-cpg").search(params[:q]).rows
    puts @results
  end

  def show
    puts params[:id]
    factual = Factual.new("EQaaFMK4DkRvfGT5GyYTEaCaUJ9Xzcfn9BALb0AA", "0bpbMmOJlirClLtE9aEpXgtUZfrhmePb4ucTAA5t")
    @result = factual.table("products-cpg").search(params[:id]).rows
  end

  def new
    @result = :item
  end

  def create
    puts @current_user[:user_id]
    item = Item.create item_params 
      redirect_to factual_path
    
  end
  
  private

  def item_params
    {name: params[:name], img_url: params[:img_url], factual_id: params[:factual_id], count: params[:count], exp_date: params[:exp_date], user_id: params[:user_id], is_favorite: params[:is_favorite]}
  end
end

