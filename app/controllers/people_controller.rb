class PeopleController < ApplicationController
  def create
    @person = Person.create(person_params)
    render json:
  end

  private

  def person_params
    params.require(:person)
    .permit(:name, hike_ids: [])
  end
end