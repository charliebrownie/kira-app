class HomepageController < ApplicationController
  def home
  end

  def answer
    @answers = all_answers
    @calculations = calculations
  end

  private
  def all_answers
    params.permit(:answer1, :answer2, :answer3)
  end

  def calculations
    right_answers = ["まじ", "しいざあ", "てぃな"]
    score = 0
    answers = all_answers
    answers.each{|key, value|
      right_answers.each do |right|
        if value == right
          score += 1
        end
      end
    }
    score
  end

end
