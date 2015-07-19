class DatesController < ApplicationController
  def index
    @tasks_grid = initialize_grid(Task,
      :order => 'id'
    )
  end
end
