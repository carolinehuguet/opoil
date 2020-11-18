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
    @walk.dog = @dog
    @walk.price = @dog.rate
    if @walk.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  private

  def walk_params
    params.require(:walk).permit(:date_time)
  end
end
