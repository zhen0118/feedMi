class WelcomeController < ActionController::Base
  def help
    # put any code here that you need 
    # (although for a static view you probably won't have any)
  end
  def index
  	@user = User.all
  end
end