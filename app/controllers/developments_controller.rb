class DevelopmentsController < ApplicationController
  def new_developments
    @newdev = DevelopmentType.where(id: 1)
  end

  def existing_developments
  end

  def residences
  end
end
