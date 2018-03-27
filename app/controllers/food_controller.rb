class FoodController < ApplicationController
  def index
    @food = Food.find(params[:id])
  end
end
