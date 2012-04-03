class StylingController < ApplicationController
  def index
    @versions_grid1 = initialize_grid(Version, :name => 'g1', :include => :project)
    @versions_grid2 = initialize_grid(Version, :name => 'g2', :include => :project)
  end
end
