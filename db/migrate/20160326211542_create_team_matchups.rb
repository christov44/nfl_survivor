class CreateTeamMatchups < ActiveRecord::Migration
  def change
    create_table :team_matchups do |t|
      t.integer :team_name_id
      t.integer :week_id

      t.timestamps null: false
    end
  end
end
