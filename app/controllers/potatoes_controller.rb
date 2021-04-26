# frozen_string_literal: true

# Control the Potatoes
class PotatoesController < ApplicationController
  def new; end

  def index
    @potatoes = Potato.all
  end

  def show
    @potato = Potato.find(params[:id])
    render :show
  end

  def create
    @potato = Potato.new(potato_params)
    @potato.save
    redirect_to @potato
  end

  def update
    Potato.update(potato_params)
  end

  def destroy
    Potato.find_by(id: params[:id]).destroy
    redirect_to root_path
  end

  private

  def potato_params
    params
      .require(:potato)
      .permit(:title, :price)
  end
end
