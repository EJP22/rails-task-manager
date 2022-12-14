class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @tasks = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @tasks = Task.new(task_params)
    @tasks.save
    redirect_to task_path(@tasks)
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
