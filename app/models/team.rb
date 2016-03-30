class Team < ActiveRecord::Base
  has_many :matchups
  has_many :picks

  validates :name, uniqueness: {case_sensitive: false}
end
