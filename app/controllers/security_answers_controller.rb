class SecurityAnswersController < ApplicationController
  def index
    @security_answers = SecurityAnswer.all
    @users = User.all

  end

  def edit
    @security_answer = SecurityAnswer.find(params[:id])

  end

  def update
    security_answer = SecurityAnswer.find(params[:id])
    security_answer.update
    redirect_to security_answer
  end

  def new
    @security_answer = SecurityAnswer.new
    @security_questions = SecurityQuestion.all
    @users = User.all
    @current_user = User.find(session[:user_id])


  end

  def create
    @security_answer = SecurityAnswer.create(security_answers_params)
    redirect_to @current_user

  end

  def verify
    @security_answer = SecurityAnswer.new
    @security_questions = SecurityQuestion.all
    @users = User.all
    @current_user = User.find(session[:user_id])
  end




  def security_answers_params
    params.require(:security_answer).permit(:answer_1, :answer_2, :answer_3, :security_question_id, :user_id)

  end
end
