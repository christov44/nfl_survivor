class FixMatchupsTable < ActiveRecord::Migration
  def change
    add_column :matchups, :home_team_id, :integer
    add_column :matchups, :away_team_id, :integer
  end
end
