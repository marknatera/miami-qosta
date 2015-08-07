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
      if Development.exists?(@development.relation_development_1) == true
        @relation_1 = Development.find(@development.relation_development_1)
      else
        @relation_1 = false
      end
    end

    unless @development.relation_development_2 == nil
      if Development.exists?(@development.relation_development_2) == true
        @relation_2 = Development.find(@development.relation_development_2)
      else
        @relation_2 = false
      end
    end

    unless @development.relation_development_3 == nil
      if Development.exists?(@development.relation_development_3) == true
        @relation_3 = Development.find(@development.relation_development_3)
      else
        @relation_3 = false
      end
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
