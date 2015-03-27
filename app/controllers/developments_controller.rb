class DevelopmentsController < ApplicationController
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
  end

  private

  def set_development
    @development = Development.find(params[:id])
  end

end
