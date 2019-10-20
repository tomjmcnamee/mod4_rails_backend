class AddOutputStartToScoreContexts < ActiveRecord::Migration[6.0]
  def change
    add_column :score_contexts, :outputStart, :string
  end
end
