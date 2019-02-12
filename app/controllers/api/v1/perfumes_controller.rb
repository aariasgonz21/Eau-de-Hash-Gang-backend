class Api::V1::PerfumesController < ApplicationController

  def index
    @perfumes = Perfume.all
    render json: @perfumes
  end

  def show
    @perfume = Perfume.find(params[:id])
    render json: @perfume, serializer: PerfumeSerializer
  end
end
