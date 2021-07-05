class AddAnswersToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :user_answers, :answer1, :string
    add_column :user_answers, :answer2, :string
    add_column :user_answers, :answer3, :string
    add_column :user_answers, :answer4, :string
    add_column :user_answers, :answer5, :string
    add_column :user_answers, :answer6, :string
    add_column :user_answers, :answer7, :string
  end
end
