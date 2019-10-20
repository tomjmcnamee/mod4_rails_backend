class AddOutputEndToScoreContexts < ActiveRecord::Migration[6.0]
  def change
    add_column :score_contexts, :outputEnd, :string
  end
end
