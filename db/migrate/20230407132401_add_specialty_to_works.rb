class AddSpecialtyToWorks < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :specialty, :string
  end
end
