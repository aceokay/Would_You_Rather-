class CommentsController < ApplicationController

  def new
    @answer = Answer.find(params[:answer_id])
    @comment = @answer.comments.new

    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
  end

  def create
    @answer = Answer.find(params[:answer_id])
    @comment = @answer.comments.new(comment_params)

    respond_to do |format|
      format.html { redirect_to questions_path }
      format.js
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
