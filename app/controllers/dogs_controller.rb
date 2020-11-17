class DogsController < ApplicationController
  def index
    @dogs = Dog.all

  def show
    @dog = Dog.find(params[:id])
  end
end
