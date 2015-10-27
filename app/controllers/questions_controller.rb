class QuestionsController < ApplicationController
  def index
    @questions = Question.all
  end

  def new
    @question = Question.new
    2.times { @question.answers.build }
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    else
      flash[:alert] = 'Please supply text for answer options'
      redirect_to questions_path
    end
  end

  private
  def question_params
    params.require(:question).permit(answers_attributes: [:body])
  end
end
