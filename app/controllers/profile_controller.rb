class ProfileController < ActionController::Base
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  # GET /users
  def index
    @users = User.all
   # @user = User.find(params[:id])||current_user
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end