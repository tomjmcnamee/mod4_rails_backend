class CreateScoreContexts < ActiveRecord::Migration[6.0]
  def change
    create_table :score_contexts do |t|
      t.string :description
      t.integer :perSecondVariable
      t.string :unit

      t.timestamps
    end
  end
end
