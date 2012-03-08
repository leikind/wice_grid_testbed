class ButtonsController < ApplicationController
  def initialize
    @tasks_grid = initialize_grid(Task,
      :include => :priority,
      :custom_order => {
        'tasks.priority_id' => 'priorities.name'
      }
    )
  end
end
