class ContactController < ApplicationController
  def show
    @list_person_in_team = Person.all
  end
end
