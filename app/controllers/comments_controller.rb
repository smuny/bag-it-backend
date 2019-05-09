class CommentsController < ApplicationController
before_action only: [:update, :delete]

  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @comment = Comment.create(comment_params)
    render json: @comment
  end

  def update
    @comment = @get_comment.update(comment_params)
    render json: @comment
  end

  def destroy
    @get_comment.destroy

  end


  private

  def get_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:description)
  end
end
