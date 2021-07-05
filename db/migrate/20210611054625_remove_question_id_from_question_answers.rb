class RemoveQuestionIdFromQuestionAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :question_answers, :question_id, :integer
  end
end
