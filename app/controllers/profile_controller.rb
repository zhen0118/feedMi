require 'url_api'

class ProfileController < ActionController::Base
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  def create
    
    # etc
  end


  # GET /users
  def index
    @users = User.all

    @weather = HTTParty.get('http://api.openweathermap.org/data/2.5/weather?q=vancouver,ca&appid=14690f349339811822071d5e32bc915f&units=metric',
    :headers =>{'Content-Type' => 'application/json'} )
    #@username = User.find(params[:user_name])||current_user
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end
end