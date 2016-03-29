class RemoveWeeksFromMatchups < ActiveRecord::Migration
  def change
    remove_column :matchups, :week
  end
end
