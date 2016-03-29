class Team < ActiveRecord::Base
  has_many :matchups

  validates :name, uniqueness: {case_sensitive: false}
end
