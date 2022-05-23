class QuestionsController < ApplicationController

   def ask
   end

  def answer
    @user_answer = params[:user_answer]
    if @user_answer == "I am going to work"
      @coach_reply = "Great!"
    elsif @user_answer.end_with?("?")
      @coach_reply = "Silly question, get dressed and go to work!"
    else
      @coach_reply = "I don't care, get dressed and go to work!"
    end
  end
end
