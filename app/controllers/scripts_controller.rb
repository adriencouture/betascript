class ScriptsController < ApplicationController

  before_action :load_project

  def new
    @script = Script.new
  end

  def create
    @script = Script.new(script_params)
    @script.project_id = @project.id
    if @script.save
      redirect_to project_path(@project)
    else
      render :new_project_script_path
    end
  end

private

  def script_params
    params.require(:script).permit(scenes_attributes: [:heading, :action, :_destroy], characters_attributes: [:name, :dialogue, :parenthetical, :_destroy])
  end

  def load_project
    @project = Project.find(params[:project_id])
  end
end
