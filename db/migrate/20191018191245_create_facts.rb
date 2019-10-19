class CreateFacts < ActiveRecord::Migration[6.0]
  def change
    create_table :facts do |t|
      t.references :score_context, null: false, foreign_key: true
      t.string :details

      t.timestamps
    end
  end
end
