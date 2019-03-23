class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end


  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.all(user_params)
    if @book.save
      redirect_to @user, notice: "登録が完了致しました"
    else
      render :new
    end
  end

  def show
    @users = User.find(params[:id])
  end

  def update
  end

  def destroy
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :profile)
    end
end
