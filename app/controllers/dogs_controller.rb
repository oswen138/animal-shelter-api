class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    if params[:page]
      @dogs = Dog.all.page(params[:page])
    end
    @dogs = Dog.paginate(page: params[:page], :per_page => 10)
    json_response(@dogs)
  end

  def show
    @dog = Dog.find(params[:id])
    json_response(@dog)
  end

  def create
    @dog = Dog.create!(dog_params)
    json_response(@dog, :created)
  end

  def update
    if @dog.update!(dog_params)
      render status: 200, json: {
        message: 'Dog info successfully updated.'
      }
    end
  end

  def destroy
    if @dog.destroy
      render status: 200, json: {
        message: 'Dog info successfully deleted.'
      }
    end
  end

  def random
    @dog = Dog.all.sample
    json_response(@dog)
  end

  def search
    @dogs = Dog.search(params[:dogName], params[:dogType])
    if params[:page]
      @dogs = Dog.search(params[:dogName], params[:dogType]).page(params[:page])
    end
    json_response(@dogs)
  end

private
  def dog_params
    params.permit(:dogType, :dogName, :dogSize)
  end
end

