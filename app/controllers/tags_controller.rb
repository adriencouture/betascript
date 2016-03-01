class TagsController < ApplicationController
  def index

  end

  def create

  end

  def update

  end

  def destroy

  end

  private

  # params so that people can't abuse the add tag form; has to be 'title'
  def tag_params
    params.require(:tag).permit(:title)
  end



end
