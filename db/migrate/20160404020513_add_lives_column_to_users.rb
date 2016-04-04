class AddLivesColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :life_count, :integer
  end
end
