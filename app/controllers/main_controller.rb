class MainController < ApplicationController
  before_action :is_authenticated?, only: [:restricted]
  def index
    puts @current_user.name
  end
end
