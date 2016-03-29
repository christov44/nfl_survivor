class AddWeekIdColumnToMatchups < ActiveRecord::Migration
  def change
    add_column :matchups, :week_id, :integer
  end
end
