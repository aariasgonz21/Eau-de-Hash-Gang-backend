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
    # byebug
    @review = Review.new(name: params[:name], rating: params[:rating], review_text: params[:review_text], perfume_id: params[:id])

    if @review.save
      render json: @review
    else
      render json: {errors: @review.errors.full_messages}
    end
  end

def update
  @review = Review.find(params[:r_id])
  @review.update(name: params[:name], rating: params[:rating], review_text: params[:review_text], perfume_id: params[:p_id])

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

  # def review_params
  #   params.permit(:name, :rating, :review_text, :id)
  # end
end
