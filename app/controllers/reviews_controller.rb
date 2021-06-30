class ReviewsController < ApplicationController

  def index
    reviews = Review.all.order(rating: :desc).includes(:dog_house)
    render json: reviews, include: :dog_house
  end

end
