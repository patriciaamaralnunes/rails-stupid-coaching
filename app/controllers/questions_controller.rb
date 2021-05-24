class QuestionsController < ApplicationController
  def ask; end

  def answer
    @message = params[:message]

    if @message.downcase == "i'm going to work"
      @answer = 'Great!'
    elsif @message.end_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
