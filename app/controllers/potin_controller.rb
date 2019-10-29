class PotinController < ApplicationController
  def show
    @user = User.all
  end
end
