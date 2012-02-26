class Basics1Controller < ApplicationController
  def index
    @tasks_grid = initialize_grid(Task)
  end
end
