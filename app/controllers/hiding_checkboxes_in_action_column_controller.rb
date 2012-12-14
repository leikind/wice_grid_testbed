class HidingCheckboxesInActionColumnController < ApplicationController
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :name => 'g'
    )

    if params[:g] && params[:g][:selected]
      @selected = params[:g][:selected]
    end
  end
end
