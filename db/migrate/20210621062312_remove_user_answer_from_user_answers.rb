class RemoveUserAnswerFromUserAnswers < ActiveRecord::Migration[5.2]
  def change
    remove_column :user_answers, :user_answer, :string
  end
end
