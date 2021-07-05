class CreateTests < ActiveRecord::Migration[5.2]
  def change
    create_table :tests do |t|
      t.integer :test_id
      t.integer :question_id
      t.integer :grade
      t.integer :type

      t.timestamps
    end
  end
end
