class Pick < ActiveRecord::Base
  belongs_to :team
  belongs_to :week
  belongs_to :user

  # validates :team, uniqueness: true
  # validates :week, uniqueness: true
  # validates :team, presence: true
  # validates :week, presence: true
end
