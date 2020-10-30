class CatsController < ApplicationController

  def index
    @cats = Cat.all
    if params[:page]
      @cats = Cat.all.page(params[:page])
    end
    @cats = Cat.paginate(page: params[:page], :per_page => 10)
    json_response(@cats)
  end

  def show
    @cat = Cat.find(params[:id])
    json_response(@cat)
  end

  def create
    @cat = Cat.create!(cat_params)
    json_response(@cat, :created)
  end

  def update
    @cat = Cat.find(params[:id])
    if @cat.update!(cat_params)
      render status: 200, json: {
       message: "Cat info has been updated successfully."
       }
    end
  end

  def destroy
    @cat = Cat.find(params[:id])
    @cat.destroy
  end

  def random
    Cat.all.each do | obj|
      cat_array.push(obj[:cat])
    end
    @cats = Cat.random_cat(cat_array)
    json_response(@cats)
  end

  def search
    @cats = Cat.search(params[:catName], params[:catType])
    if params[:page]
      @cats = Cat.search(params[:catName], params[:catType]).page(params[:page])
    end
    json_response(@cats)
  end

private
  def cat_params
    params.permit(:catType, :catName)
  end
end