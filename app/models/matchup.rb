class Matchup < ActiveRecord::Base
  has_many :team_matchups
  has_many :teams, through: :team_matchups
end
