class ChangeColumnNames < ActiveRecord::Migration
  def change
    rename_column :team_matchups, :team_name_id, :team_id
    rename_column :team_matchups, :week_id, :matchup_id
  end
end
