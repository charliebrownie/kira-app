class RemoveTestIdFromTests < ActiveRecord::Migration[5.2]
  def change
    remove_column :tests, :test_id, :integer
  end
end
