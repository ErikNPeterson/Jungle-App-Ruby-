class ReviewsController < ApplicationController

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

    def create
    review = Review.new(
      product_id: params[:product_id],
      user_id: current_user.id,
      description: params[:review][:description],
      rating: params[:review][:rating]
    )

    if review.save
      # send_email(order)
      redirect_to product_path(:id => params[:product_id]), notice: 'Review Submitted.'
    else
      redirect_to product_path(:id => params[:product_id]), notice: 'Sorry, we could not submit your review.'
    end

  end 

end
