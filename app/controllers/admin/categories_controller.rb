class Admin::CategoriesController < ApplicationController
  def index
    @catagories = Catagory.order(id: :desc).all
  end

  def create
    @catagory = Catagory.new(catagory_params)

    if @catagory.save
      redirect_to [:admin, :catagories], notice: 'Catagory created!'
    else
      render :new
    end
  end

  def new
    @catagory = Catagory.new
  end

  def catagory_params
    params.require(:catagory).permit(
      :name
    )
  end

end


