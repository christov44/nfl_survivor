class Matchup < ActiveRecord::Base
  has_many :team_matchups
  has_many :teams, through: :team_matchups

  validates :week, uniqueness: {case_sensitive: false}
end
