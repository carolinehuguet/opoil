class DashboardsController < ApplicationController
  def show
    @walks = Walk.where(user: current_user)
    @dogs = Dog.where(owner: current_user)
    @my_dog_walks = Walk.includes(:dog, :user).where(dogs: { user_id: current_user.id })
  end
end
