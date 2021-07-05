class RemoveUserAnswerIdFromUserAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_answers, :user_answer_id, :integer
  end
end
