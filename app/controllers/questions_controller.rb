class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:question]
    if @question.present?
      if @question.downcase.start_with?('I am going to work'.downcase)
        @answer = 'Great!'
      elsif @question[-1] == '?'
        @answer = 'Silly question, get dressed and go to work!'
      else
        @answer = 'I don\'t care, get dressed and go to work!'
      end
    else
      render 'ask'
    end
  end
end
