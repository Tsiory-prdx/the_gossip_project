class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
    
  end

  def new
    @city = City.new
    @user = User.new
    @goss = Gossip.new
  end

  def create
    @city = City.new(name: params[:city], zip_code: params[:zip_code])
    @city.save
    @user = User.new(first_name:params[:nom],last_name:params[:prenom],description:params[:description],email:params[:email],age:params[:age],city_id:@city.id)
    @user.save
    @gossips = Gossip.new(title: params[:title], content: params[:content], user_id: @user.id)
    @gossips.save
    if @gossips.save 
      redirect_to gossips_path
    else
      render "new"
    end
  end

  def show
    @goss = Gossip.find_by(id:params["id"])
    @user = User.all
  end
end