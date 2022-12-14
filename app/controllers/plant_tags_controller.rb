class PlantTagsController < ApplicationController

  def new
    @plant = Plant.find(params[:plant_id])
    @plant_tag = PlantTag.new
  end

  def create
    plant = Plant.find(params[:plant_id])

    Tag.where(id: params[:plant_tag][:tag]).each do |tag|
      PlantTag.create(plant: plant, tag: tag)
    end
    redirect_to garden_path(plant.garden)
  end
end
