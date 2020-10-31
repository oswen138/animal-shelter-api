class AnimalsController < ApplicationController

  # def index
  #   @animals = Animal.all
  #   if params[:animalType]
  #     animal_type = params[:animalType]
  #   end
  #   @animals = Animal.search(:animalType, :catType)
  #   @animals = Animal.paginate(page: params[:page])
  #   json_response(@animals)
  # end

  def index
    if params[:animalType]
      animal_type = params[:animalType]
      @animals = Animal.search_by_animalType(animal_type)
    else
      @animals = Animal.all
    end
    @animals = Animal.paginate(page: params[:page])
    json_response(@animals)
  end


  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update!(animal_params)
      render status: 200, json: {
       message: "This animal has been updated successfully."
       }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if@animal.destroy!
      render status: 200, json: {
        message: "Animal deleted"
      }
    end
  end

  def random
    @animal = Animal.all.sample
    json_response(@animal)
  end

  private
  def animal_params
    params.permit(:animalType, :catType, :catName, :dogType, :dogName, :dogSize)
  end
end