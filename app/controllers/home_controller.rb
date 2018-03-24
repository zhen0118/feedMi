class HomeController < ApplicationController
  def index
  end

  def sample
  	@controller_message = "Hello From Controller"
  end

  def food
  	@food_origin = params[:food_origin]
  	@food_type = params[:food_type]
  	#TODO: add parameter checking
  	if @food_origin != "" && @food_type != ""
  		@food = Food.where("food_origin = ? and food_type = ?", @food_origin, @food_type).sample
  	elsif @food_origin != ""
  		@food = Food.where("food_origin =?", @food_origin).sample
  	elsif @food_type != ""
  		@food = Food.where("food_type =?", @food_type).sample
  	else
  		@food = Food.order("RAND()").first
  	end

  	respond_to do |format|               
    format.js #renders partial _food.html.erb
  end        
end 
end
