class Week < ActiveRecord::Base
  has_many :matchups
  has_many :picks
end
