class IntegrationWithFormsController < ApplicationController
  def index
    @archived = params[:archived] == '1' ? true : false

    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :conditions => {:archived => @archived},
      :name => 'g'
    )

  end
end
