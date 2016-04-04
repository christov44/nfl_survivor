class Team < ActiveRecord::Base
  has_many :matchups
  has_many :picks
  has_many :victors

  validates :name, uniqueness: {case_sensitive: false}
end
