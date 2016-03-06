class ScenesController < ApplicationController

  before_action :load_project

  def new
    @scene = Scene.new
  end

  def create
    @scene = @project.scenes.build(scene_params)
    if @scene.save
      redirect_to project_path(@project)
    else
      render :new_project_scene_path
    end
  end

  def show
    @scene = Scene.find(params[:id])
  end

private

  def scene_params
    params.require(:scene)
          .permit(:heading, :action,
                  characters_attributes: [:name, :dialogue, :parenthetical, :_destroy])
  end

  def load_project
    @project = Project.find(params[:project_id])
  end
end
