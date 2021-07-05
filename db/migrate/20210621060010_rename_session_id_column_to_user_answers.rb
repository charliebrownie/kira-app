class RenameSessionIdColumnToUserAnswers < ActiveRecord::Migration[5.2]
  def change
    rename_column :user_answers, :session_id, :test_num
  end
end
