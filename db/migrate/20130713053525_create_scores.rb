class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :passing_yards, default: 0
      t.integer :rushing_yards, default: 0
      t.integer :receiving_yards, default: 0
      t.integer :receptions, default: 0

      t.integer :passing_tds, default: 0
      t.integer :rushing_tds, default: 0
      t.integer :receiving_tds, default: 0

      t.integer :interceptions, default: 0
      t.integer :fumbles, default: 0

      t.timestamps
    end

    add_column :schedulings, :score_id, :integer
    add_column :players, :score_id, :integer
  end
end
