class Pick < ActiveRecord::Base
  belongs_to :team
  belongs_to :week
  belongs_to :user

  validates_uniqueness_of :team_id, scope: [:user_id]
  validates_uniqueness_of :week_id, scope: [:user_id]

end
