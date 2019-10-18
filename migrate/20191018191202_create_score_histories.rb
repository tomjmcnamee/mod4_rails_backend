class CreateScoreHistories < ActiveRecord::Migration[6.0]
  def change
    create_table :score_histories do |t|
      t.references :game, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.float :score

      t.timestamps
    end
  end
end
