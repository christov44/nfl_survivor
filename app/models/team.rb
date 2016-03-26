class Team < ActiveRecord::Base
  has_many :team_matchups
  has_many :matchups, through: :team_matchups
end
