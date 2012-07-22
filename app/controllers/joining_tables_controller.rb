class JoiningTablesController < ApplicationController

  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :conditions => {:archived => false},
      :order => 'id'
    )
  end

end
