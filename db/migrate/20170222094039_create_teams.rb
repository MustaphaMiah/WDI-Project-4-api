class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.string :name
      t.integer :vacant_spots
      t.string :status
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
