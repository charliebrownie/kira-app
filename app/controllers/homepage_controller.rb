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
    @calculations = calculations_one
    @right_answers = right_answers_one
  end

  def answer_preone
    @answers = all_answers
    @calculations = calculations_preone
    @right_answers = right_answers_preone
  end

  def answer_two
    @answers = all_answers
    @calculations = calculations_two
    @right_answers = right_answers_two
  end

  def answer_three
    @answers = all_answers
    @calculations = calculations_three
    @right_answers = right_answers_three
  end

  private
  def all_answers
    params.permit(:answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7)
  end

  def calculations_one
    score = 0
    answers = all_answers
    answers.each{|key, value|
      right_answers_one.each do |right|
        if value == right
          score += 1
        end
      end
    }
    score
  end

  def calculations_preone
    score = 0
    answers = all_answers
    answers.each{|key, value|
      right_answers_preone.each do |right|
        if value == right
          score += 1
        end
      end
    }
    score
  end

  def calculations_two
    score = 0
    answers = all_answers
    answers.each{|key, value|
      right_answers_two.each do |right|
        if value == right
          score += 1
        end
      end
    }
    score
  end

  def calculations_three
    score = 0
    answers = all_answers
    answers.each{|key, value|
      right_answers_three.each do |right|
        if value == right
          score += 1
        end
      end
    }
    score
  end

  def right_answers_one
    right_answers = ["しえる", "ななあん", "えでぃ", "てん", "きらら", "きてぃ", "やから"]
  end

  def right_answers_preone
    right_answers = ["しゃありん", "ぴいな", "ぺこ", "りいだ", "ろーら", "ないき", "さんた"]
  end

  def right_answers_two
    right_answers = ["まじ", "しいざあ", "てぃな", "ぷう", "ありえる", "あだむ", "しょーん"]
  end

  def right_answers_three
    right_answers = ["はーもにー", "ぴんく", "どれみ", "ろまん", "ぽえむ", "さんば", "さいん"]
  end

end
