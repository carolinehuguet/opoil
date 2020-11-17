class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.owner = current_user
    if @dog.save!
      redirect_to dog_path(@dog)
    else
      render 'new'
    end
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :size, :breed, :rate, :description, :picture)
  end

  def set_dog
    @dog = Det.find(params[:id])
  end
end
