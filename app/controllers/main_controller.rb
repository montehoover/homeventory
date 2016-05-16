class MainController < ApplicationController
  before_action :is_authenticated?, only: [:restricted]
  def index
  end
end
