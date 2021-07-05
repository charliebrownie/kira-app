class RenameTypeColumnToTests < ActiveRecord::Migration[5.2]
  def change
    rename_column :tests, :type, :test_num
  end
end
