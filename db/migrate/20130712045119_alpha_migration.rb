class AlphaMigration < ActiveRecord::Migration
  def change
    create_table :players do |t|
      # STI
      t.string :type
      t.integer :team_id

      t.string :first_name
      t.string :last_name
      
      t.integer :ffn_key
      t.timestamps
    end
    
    create_table :games do |t|
      t.integer :home_team_id
      t.integer :away_team_id

      t.datetime :scheduled_at
    end

    create_table :teams do |t|
      t.string :name

      t.string :city
      t.string :state

      t.integer :wins
      t.integer :losses
    end

    create_table :schedulings do |t|
      t.integer :player_id
      t.integer :game_id

      t.integer :passing_yards
      t.integer :rushing_yards
      t.integer :receiving_yards
      t.integer :touchdowns

      t.integer :interceptions
      t.integer :fumbles

      t.string :status

      t.text :notes
    end
  end
end
