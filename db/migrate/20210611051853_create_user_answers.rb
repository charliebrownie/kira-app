class CreateUserAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :user_answers do |t|
      t.integer :user_answer_id
      t.integer :session_id
      t.string :user_answer
      t.integer :question_id

      t.timestamps
    end
  end
end
