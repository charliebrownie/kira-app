class HomepageController < ApplicationController
  def new
    @user_answer = UserAnswer.new
  end

  def answer_new
    @answers = all_answers
    @user_answer= UserAnswer.new(all_answers)
    @user_answer.save
  end

  def test_one
    @user_answer = UserAnswer.new
    @questions = QuestionAnswer.where(grade: 0, test_num: params[:test_num])
  end

  def test_preone
    @user_answer = UserAnswer.new
    @questions = QuestionAnswer.where(grade: 1, test_num: params[:test_num])
  end

  def test_two
    @user_answer = UserAnswer.new
    @questions = QuestionAnswer.where(grade: 2, test_num: params[:test_num])
  end

  def test_three
    @user_answer = UserAnswer.new
    @questions = QuestionAnswer.where(grade: 3, test_num: params[:test_num])
  end

  def answer_one
    @answers = all_answers
    @calculations = calculations_one
    @right_answers = QuestionAnswer.where(grade: 0, test_num: 1).select(:id, :answer)
    @questions = QuestionAnswer.where(grade: 0, test_num: 1)
    @user_answer= UserAnswer.new(all_answers)
    @user_answer.save
    @others_answers = UserAnswer.where(grade:0, test_num:1) 
  end

  def answer_preone
    @answers = all_answers
    @calculations = calculations_preone
    @right_answers = QuestionAnswer.where(grade: 1, test_num: 1).select(:id, :answer)
    @questions = QuestionAnswer.where(grade: 1, test_num: 1)
    @user_answer= UserAnswer.new(all_answers)
    @user_answer.save
    @others_answers = UserAnswer.where(grade: 1, test_num:1) 
  end

  def answer_two
    @answers = all_answers
    @calculations = calculations_two
    @right_answers = QuestionAnswer.where(grade: 2, test_num: 1).select(:id, :answer)
    @questions = QuestionAnswer.where(grade: 2, test_num: 1)
    @user_answer= UserAnswer.new(all_answers)
    @user_answer.save
    @others_answers = UserAnswer.where(grade: 2, test_num:1) 
  end

  def answer_three
    @answers = all_answers
    @calculations = calculations_three
    @right_answers = QuestionAnswer.where(grade: 3, test_num: 1).select(:id, :answer)
    @questions = QuestionAnswer.where(grade: 3, test_num: 1)
    @user_answer= UserAnswer.new(all_answers)
    @user_answer.save
    @others_answers = UserAnswer.where(grade: 3, test_num:1) 
  end

  private
  def all_answers
    params.require(:user_answer).permit(:answer1, :answer2, :answer3, :answer4, :answer5, :answer6, :answer7, :grade, :test_num)
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
