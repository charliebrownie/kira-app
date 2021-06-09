class HomepageController < ApplicationController
  def test_one
  end

  def test_preone
  end

  def test_two
  end

  def test_three
  end

  def answer_one
    @answers = all_answers
    @calculations = calculations
    @right_answers = ["しえる", "ななあん", "えでぃ", "てん", "きらら", "きてぃ", "やから"]
  end

  def answer_preone
    @answers = all_answers
    @calculations = calculations
    @right_answers = ["しゃありん", "ぴいな", "ぺこ", "りいだ", "ろーら", "ないき", "さんた"]
  end

  def answer_two
    @answers = all_answers
    @calculations = calculations
    @right_answers = ["まじ", "しいざあ", "てぃな", "ぷう", "ありえる", "あだむ", "しょーん"]
  end

  def answer_three
    @answers = all_answers
    @calculations = calculations
    @right_answers = ["はーもにー", "ぴんく", "どれみ", "ろまん", "ぽえむ", "さんば", "さいん"]
  end

  private
  def all_answers
    params.permit(:answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7)
  end

  def calculations
    right_answers = ["まじ", "しいざあ", "てぃな", "ぷう", "ありえる", "あだむ", "しょーん"]
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

  def menu

  end
end
