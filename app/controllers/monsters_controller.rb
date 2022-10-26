class MonstersController < ApplicationController
  def index
    @monsters = Monster.all.order(name: :desc)
  end

  def show
    @monster = Monster.find(params[:id])
  end

  def create
    @monster = Monster.new(monster_params)
    if @monster.save
      redirect_to edit_monster_path(@monster)
    else
      render :new, status: :see_other
    end
  end

  private
  def monster_params
    params.require(:monster).permit(:name, :description, :phone, :birthdate, :cover_picture, :location_point)
  end

end
