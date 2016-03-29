class Matchup < ActiveRecord::Base
  belongs_to :team
  belongs_to :away_team, class_name: 'Team'
  belongs_to :home_team, class_name: 'Team'
end
