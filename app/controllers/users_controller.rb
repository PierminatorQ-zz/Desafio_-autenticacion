class UsersController < ApplicationController
    #before_action :set_user, only: [:show, :edit, :update, :destroy]
  
    # GET /users
    # GET /users.json
    def index
      @users = User.all
    end
  
    # GET /users/1
    # GET /users/1.json
    def show
       @users = User.all
    end
  
    # GET /users/new
    def new
      @user = User.new
    end


    private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #  @user = User.find(params[:id])
    # end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :password)
    end
end