# encoding: utf-8
class IntegrationWithApplicationViewController < ApplicationController
  def index
    @tasks_grid = initialize_grid(Task,
      include: [:priority, :status, :project, :assigned_users],
      order: 'statuses.name',
      name: 'g',
      per_page: 10,
      custom_order: {
        'tasks.priority_id' => 'priorities.name',
        'tasks.status_id' => 'statuses.position',
        'tasks.project_id' => 'projects.name'
      }
    )
  end
end
