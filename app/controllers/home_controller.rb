class HomeController < ApplicationController
  def index
  end

  def sample
  	@controller_message = "Hello From Controller"
  end

  def get_random_food
    Food.order("RAND()").first(1)
  end

  def food
  	respond_to do |format|               
    format.js #renders partial _food.html.erb
  end        
end 
end
