class RenameQuestionIdColumnToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_answers, :question_id, :grade
  end
end
