class AddColumnUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :score, :integer
    add_column :users, :quiz_id, :integer
  end
end
