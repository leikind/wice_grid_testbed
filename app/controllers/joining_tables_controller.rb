# encoding: utf-8
class JoiningTablesController < ApplicationController
  def index
    @tasks_grid = initialize_grid(Task,
      conditions: { archived: false },
      order: 'id'
    )
  end
end
