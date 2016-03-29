class DeleteTable < ActiveRecord::Migration
  def change
    drop_table :team_matchups
  end
end
