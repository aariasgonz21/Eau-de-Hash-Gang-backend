class Api::V1::ReviewsController < ApplicationController
  def show
    @review = Review.find(params[:id])
    if @review
      render json: @review
    else
      render json: {errors: @review.errors.full_messages}
    end
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render json: @review
    else
      render json: {errors: @review.errors.full_messages}
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
  end

  private

  def review_params
    params.require(:review).permit(:name, :rating, :review_text)
  end
end
