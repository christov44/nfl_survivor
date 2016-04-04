class User < ActiveRecord::Base
  has_many :picks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  after_create :create_blank_picks
  after_create :give_user_lives

  private
    def create_blank_picks #At some point I could just go clear the Week's db and make the week_ids and week_numbers line up
      (1..17).each do |week|
        Pick.create(user_id: self.id, week_id: week)
      end
      # (7..18).each do |week|
      #   Pick.create(user_id: self.id, week_id: week)
      # end
    end

    def give_user_lives
      User.last.life_count = 2
    end
end