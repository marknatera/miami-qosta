class DevelopmentsController < ApplicationController

  before_filter :find_dev, only: [:show]

  before_action :set_development, only: [:show]


  def index
    @developments = Development.all
  end

  def new_developments_index
    @newdev = Development.where(development_type_id: 1)
  end

  def new_developments_show

  end


  def show
    @devs = Development.all
    unless @development.relation_development_1 == nil
      @relation_1 = Development.find(@development.relation_development_1)
    end
    unless @development.relation_development_2 == nil
      @relation_2 = Development.find(@development.relation_development_2)
    end
    unless @development.relation_development_3 == nil
      @relation_3 = Development.find(@development.relation_development_3)
    end
  end


private

  def set_development
    0.times {@development.amenities.build}
    0.times {@development.building_services.build}
    0.times {@development.residence_types.build}
    0.times {@development.residence_features.build}
    0.times {@development.galleries.build}
  end

  def find_dev
    @development = Development.find_by_slug!(params[:id])
  end

end
