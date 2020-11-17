class WalksController < ApplicationController
  def new
    @dog = Dog.find(params[:dog_id])
    # @user = User.find(params[:user_id])
    @walk = Walk.new
  end

  def create
    @dog = Dog.find(params[:dog_id])
    @user = current_user
    @walk = Walk.new(walk_params)
    @walk.user = @user
    @walk.save
  end

  private

  def walk_params
    params.require(:walk).permit(:date_time, :user_id, :dog_id, :status, :price)
  end
end
