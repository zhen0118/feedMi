class ProfileController < ActionController::Base
  # GET /users
  def index
    @users = User.all
   # @user = User.find(params[:id])||current_user
  end
  # GET /posts/1
	def show
	  @user = User.find(params[:id])
	end
end