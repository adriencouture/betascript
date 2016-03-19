class CommentsController < ApplicationController
  # require login before commenting

  # load the project so that you can comment on said project
  before_action :load_project

  def create
    @comment = @project.comments.build(comment_params)
    @comment.user = current_user

    if @comment.save
      respond_to do |format|
        format.html
        format.js
      end
      # redirect_to project_path(@project)
    else
      render :new
    end


  end

  def show
    @comment = Comment.find(params[:id])
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to project_path(@project)
  end


  private

  def comment_params
    params.require(:comment).permit(:comment, :project_id)
  end

  def load_project
    @project = Project.find(params[:project_id])
  end


end
