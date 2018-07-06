class HeroinesController < ApplicationController

  before_action :set_heroine, only: [:show]

  def index
    @heroines = Heroine.all
  	if params[:search]
  		@heroines = Heroine.search(params[:search]).order("created_at DESC")
  	else
  		@power = Power.all.order("created_at DESC")
  	end
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)

    if @heroine.save
      redirect_to heroines_path
    else
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

  def set_heroine
    @heroine = Heroine.find(params[:id])
  end
end
