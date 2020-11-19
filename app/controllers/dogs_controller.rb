class DogsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @dogs = Dog.all

    @markers = @dogs.geocoded.map do |dog|
      {
        lat: dog.latitude,
        lng: dog.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { dog: dog })
      }
    end
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

  def edit
    # ajouter une condition d'accès à la page
    # current_user doit être le Dog.owner
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])
    @dog.owner = current_user
    if @dog.update(dog_params)
      redirect_to dog_path(@dog)
    else
      render 'edit'
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy

    redirect_to dashboard_path
  end

  private
  def dog_params
    params.require(:dog).permit(:name, :size, :breed, :rate, :description, :picture)
  end

  def set_dog
    @dog = Dog.find(params[:id])
  end
end
