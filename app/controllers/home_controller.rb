class HomeController < ApplicationController
  def index
  end

  def sample
  	@controller_message = "Hello From Controller"
  end

  def get_random_food
    Food.order("RAND()").first(1)
  end
end
