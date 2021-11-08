class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @question = params[:question]
    @response = if @question == 'I am going to work'
      'Great'
    elsif @question.include?('?')
      'Silly question, get dressed and go back to work!'
    else
      "I don't care, get dressed and go back to work!"
    end
  end
end
