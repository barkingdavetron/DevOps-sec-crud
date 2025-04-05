class PagesController < ApplicationController
  def dashboard
    @total_tasks = Task.count
    @completed_tasks = Task.where(completed: true).count
    @incomplete_tasks = Task.where(completed: false).count

    @completion_rate = if @total_tasks > 0
                         ((@completed_tasks.to_f / @total_tasks) * 100).round
                       else
                         0
                       end
  end
end
