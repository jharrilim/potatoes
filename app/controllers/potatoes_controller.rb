class PotatoesController < ApplicationController
  def index
    @potatoes = Potato.all
  end

  def new
  
  end

  def show
    @potato = Potato.find(params[:id])
  end

  def create
    @potato = Potato.new(potato_params)
    @potato.save
    redirect_to @potato
  end

  private

  def potato_params
    params
      .require(:potato)
      .permit(:title, :price)
  end
end
