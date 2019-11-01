class TeamController < ApplicationController
  def index
    @list_person_in_team = Person.all
  end
end
