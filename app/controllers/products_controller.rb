class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
  end

  def show
    @product = Product.find params[:id]
    @reviews = @product.reviews
    # below is needed to create a new instance of review so that our 'write a review' renders correctly.
    @review = Review.new
  end

end
