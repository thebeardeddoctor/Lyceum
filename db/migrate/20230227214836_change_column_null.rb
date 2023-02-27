class ChangeColumnNull < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :work_id, true
  end
end
