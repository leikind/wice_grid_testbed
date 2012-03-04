class CustomOrdering2Controller < ApplicationController
  def index
    @tasks_grid = initialize_grid(Task,
      :include => [:priority, :status, :project, :assigned_users],
      :conditions => { :archived => false},
      :order => 'statuses.name',
      :custom_order => {
        'statuses.name' => 'statuses.position'
      }
    )

  end
end
