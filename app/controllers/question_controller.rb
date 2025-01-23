class QuestionController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question] # On récupère la question posée
    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question&.end_with?("?") # Vérifie si ça se termine par un "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
