class AddDetailsToQuestionAnswers < ActiveRecord::Migration[5.2]
  def change
    add_column :question_answers, :grade, :integer
    add_column :question_answers, :test_num, :integer
  end
end
