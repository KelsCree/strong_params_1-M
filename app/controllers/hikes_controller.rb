class HikesController < ApplicationController
  def index
    @hikes = Hike.all
    render json: @hikes, include: :person
  end

  def create
    @hike = Hike.new(hike_params)
    if @hike.valid?
      @hike.save
      render json: @hike, include: :person, status: :created
    else
      render json: { errors: @hike.errors.full_messages }, status: :unprocessesable_identity
    end
  end

  private

  def hike_params
    params.require(:hike).permit(
      :mountain,
      :person_id,
      :person_attributes: [:name]
    )
  end
  
end
