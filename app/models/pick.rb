class Pick < ActiveRecord::Base
  belongs_to :team
  belongs_to :week
  belongs_to :user

  validates :team_id, uniqueness: true
  validates :week_id, uniqueness: true
end
