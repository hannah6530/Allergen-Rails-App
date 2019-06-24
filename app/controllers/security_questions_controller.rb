class SecurityQuestionsController < ApplicationController
  def index
    @security_questions = SecurityQuestion.all
  end

  def new
    @security_question = SecurityQuestion.new
  end

  def show
    @security_question = SecurityQuestion.find(params[:id])
  end

  # def edit
  # end
  #
  # def update
  # end

  private
  def security_question_params
    params.require(:security_question).permit()
  end

end
