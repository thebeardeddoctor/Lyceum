class AddTimelineToWorks < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :timeline, :integer
  end
end
