class AddDescriptionToWorks < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :description, :text
  end
end
