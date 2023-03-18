class AddGoalToWorks < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :goal, :string
  end
end
