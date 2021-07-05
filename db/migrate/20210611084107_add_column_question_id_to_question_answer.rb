class AddColumnQuestionIdToQuestionAnswer < ActiveRecord::Migration[5.2]
  def change
    add_column :question_answers, :question_id, :integer
  end
end
