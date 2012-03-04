class TwoAssociationsController < ApplicationController
  def index
    @projects_grid = initialize_grid(Project, :include => [:customer, :supplier] )
  end
end
