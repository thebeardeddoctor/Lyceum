class RemoveWorkIdFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :work_id, :integer
  end
end
