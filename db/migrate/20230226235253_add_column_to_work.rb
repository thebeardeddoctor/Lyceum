class AddColumnToWork < ActiveRecord::Migration[7.0]
  def change
    add_column :works, :title, :string
    add_column :works, :body, :text
  end
end
