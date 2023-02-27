class AddWorkIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :work, null: false, foreign_key: true
  end
end
