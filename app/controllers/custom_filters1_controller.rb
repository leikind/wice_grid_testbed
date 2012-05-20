class CustomFilters1Controller < ApplicationController
  def index
    @versions_grid1 = initialize_grid(Version, :name => 'g1', :include => :project, :per_page => 5)
    @versions_grid2 = initialize_grid(Version, :name => 'g2', :include => :project, :per_page => 5)
    @versions_grid3 = initialize_grid(Version, :name => 'g3', :include => :project, :per_page => 5)
    @versions_grid4 = initialize_grid(Version, :name => 'g4', :include => :project, :per_page => 5)
  end
end
