class CharactersController < ApplicationController

  before_action: load_scene

  def destroy
    @character = Character.find(params[:id])
    # if @project.user == current_user
    @character.destroy
    # end
    # if @character.destroy
    #   alert: "Character deleted!"
    end

  end

  private

  def characters_params
    params.permit(:id)
  end

  def load_scene
    @scene = Scene.find(params[:scene_id])
  end
end
