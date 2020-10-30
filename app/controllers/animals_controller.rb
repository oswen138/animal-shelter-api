class AnimalsController < ApplicationController

  def index
    @animals = Animal.paginate(page: params[:page], :per_page => 10)
    if params[:cat]
      cat_name = params[:cat]
    end
    if params[:dog]
      dog_name = params[:dog]
    end
    @animals = Animal.search(cat_name, dog_name)
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
    @animal.destroy
  end

  def animal_params
    params.permit(:catType, :catName, :dogType, :dogName, :dogSize)
  end
end