class Pick < ActiveRecord::Base
  belongs_to :team
  belongs_to :week
  belongs_to :user

  validates_uniqueness_of :team_id, scope: [:user_id], on: :update

#Originally had created a custom method, but didn't end up needing it
  # private
  # def user_can_only_have_one_pick_per_week
  #   existing_picks = Pick.where(week_id: week_id, user_id: user_id)

  #   if existing_picks.present?
  #     errors.add(:week_id, "is already selected")
  #   end
  # end
end
