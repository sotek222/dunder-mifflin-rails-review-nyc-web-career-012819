class DogsController < ApplicationController

  def index
    @dogs = dogs_by_employees
  end

  def show
    @dog = Dog.find(params[:id])
  end


  private

  def dogs_params
    params.require(:dog).permit(:name, :breed, :age)
  end

  def dogs_by_employees
    @dogs = Dog.all.sort_by do |dog|
      dog.employees.count
    end
    @dogs.reverse
  end

end
