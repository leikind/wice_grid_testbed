class ResultsetProcessingsController < ApplicationController
  def index
    @tasks_grid = initialize_grid(Task,
      :include => :project,
      :conditions => {:archived => false},
      :order => 'id',
      :per_page => 10
    )

    @project_data = {} # {project_id => data}

    @tasks_grid.with_paginated_resultset do |records|
      project_ids = records.map(&:project_id).uniq
      @project_data.merge! time_consuming_operation_better_done_in_one_shot(project_ids)
    end

  end
end
