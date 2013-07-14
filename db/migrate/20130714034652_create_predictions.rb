class CreatePredictions < ActiveRecord::Migration
  def change
    create_table :predictions do |t|
      t.belongs_to :user
      t.belongs_to :score
      t.belongs_to :player

      t.timestamps
    end
  end
end
