class ManyGridsOnPageController < ApplicationController
  def index
    @projects_grid = initialize_grid(Project,
      :include => [:customer, :supplier],
      :name => 'g1'
    )
    @tasks_grid = initialize_grid(Task, :name => 'g2')
  end
end
