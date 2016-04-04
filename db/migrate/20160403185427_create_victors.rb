class CreateVictors < ActiveRecord::Migration
  def change
    create_table :victors do |t|
      t.integer :team_id
      t.integer :week_id

      t.timestamps null: false
    end
  end
end
