class SecurityAnswersController < ApplicationController
  # def index
  #
  # end

  def edit
    @security_answer = SecurityAnswer.find(params[:id])

  end

  def update
    @security_answer = SecurityAnswer.find(params[:id])
    @security_answer.update
    redirect_to @user

  end

  def new
    @security_answer = SecurityAnswer.new
    @security_question = SecurityQuestion.all

  end

  def create
    @security_answer = SecurityAnswer.create(security_answers_params)
    redirect_to @user

  end

  def security_answers_params
    params.require(:security_answer).permit(:answer_1, :answer_2, :answer_3, :sec_ques_id)

  end
end
