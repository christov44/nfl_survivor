class Week < ActiveRecord::Base
  has_many :matchups
  has_many :picks
  has_many :victors
end
