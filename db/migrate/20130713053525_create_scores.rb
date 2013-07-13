class CreateScores < ActiveRecord::Migration
  def change
    create_table :scores do |t|
      t.integer :passing_yards
      t.integer :rushing_yards
      t.integer :receiving_yards
      t.integer :touchdowns

      t.integer :interceptions
      t.integer :fumbles

      t.timestamps
    end

    add_column :schedulings, :score_id, :integer
    add_column :players, :score_id, :integer
  end
end
