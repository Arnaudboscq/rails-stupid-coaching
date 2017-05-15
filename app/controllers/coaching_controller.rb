class CoachingController < ApplicationController

  def answer
    @query = params[:query]
    coach_answer_enhance
  end

  def ask
  end

  def home
  end
end

private

def coach_answer
  if @query.include? "?"
    @query = "Silly question, get dressed and go to work!"
  elsif @query == "I am going to work right now!"
    @query = ""
  else
    @query = "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced
  basic_answer = coach_answer(@query)
  if @query == "I AM GOING TO WORK RIGHT NOW!"
    return ""
  elsif @query == @query.upcase
    return "I can feel your motivation! #{basic_answer}"
  else
    return basic_answer
  end
end
